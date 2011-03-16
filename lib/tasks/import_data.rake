namespace :import do
    desc 'Import Stanford format data to new database'
    task :stanford => :environment do
      
      filename='tmp/seed_file.rb'
      output_file=File.open(filename,'w')

      database=ActiveRecord::Base.establish_connection(:adapter=>'mysql',:username=>'root',:password=>'',:database=>'stanford')
      organisms=database.connection.select_all('select * from organisms_new')
      organisms.each do |organism|        
        rank=organism['rank'].sub('-','_').strip.downcase
        row="taxon=Taxon.create(:rank=>:#{rank},:group=>'#{organism['group']}',:entered_name=>\"#{organism['sci_name']}\")"
        output_file.puts row
        row="taxonomy=Taxonomy.create(:class_rank=>'#{organism['class']}',:order=>'#{organism['order']}',:super_family=>'#{organism['super-family']}',:family=>'#{organism['family']}',:sub_family=>'#{organism['sub-family']}',:tribe=>'#{organism['tribe']}',:genus=>'#{organism['genus']}',:species=>'#{organism['species']}',:sub_species=>'#{organism['sub-species']}')"
        output_file.puts row
        row="taxon.taxonomies << taxonomy"
        output_file.puts row
        
        bridge_eco=database.connection.select_all("select * from bridge_eco join ecosystems on ecosystems.id=bridge_eco.id_eco where id_tax='#{organism['id']}'")
        if bridge_eco.size > 0
          bridge_eco.each do |eco|
            row="taxon.ecosystems << Ecosystem.find_by_name('#{eco['name']}')"
            output_file.puts row
          end
        end
        
      end
      
      output_file.close
      
    end
    
    desc 'Import Stanford format data observations to new database'
    task :observations => :environment do
      
      filename='tmp/seed_file_obs.rb'
      output_file=File.open(filename,'w')

      database=ActiveRecord::Base.establish_connection(:adapter=>'mysql',:username=>'root',:password=>'',:database=>'stanford')

      observations=database.connection.select_all("select * from observations join interactions_old on observations.inter_id=interactions_old.id")
      observations.each do |observation|
          interaction=Interaction.find_by_name(observation['title'].strip)
          left_taxon=Taxon.find_by_old_id(observation['sp1_id'].strip)          
          right_taxon=Taxon.find_by_old_id(observation['sp2_id'].strip)
          row="Observation.create(:left_taxon_id=>#{left_taxon.id},:right_taxon_id=>#{right_taxon.id},:interaction_id=>#{interaction.id})"
          output_file.puts row
      end
      
      output_file.close
      
    end
end