# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Ecosystem.create(:name=>'Florida Everglades',:description=>'Selected species from a threatened ecosystem in Florida.')
Ecosystem.create(:name=>'Economically Important Pollinators',:description=>'elected pollinators of US crops.')

b=Biome.create(:name=>'Terrestrial', :sort_order=>1)
b1=Biome.create(:name=>'Tropical and subtropical moist broadleaf forests',:parent=>b,:sort_order=>1)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Oceania',:parent=>b1,:sort_order=>5)
b1=Biome.create(:name=>'Tropical and subtropical dry broadleaf forests',:parent=>b,:sort_order=>2)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Oceania',:parent=>b1,:sort_order=>5)
b1=Biome.create(:name=>'Tropical and subtropical coniferous forests',:parent=>b,:sort_order=>3)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>2)
b1=Biome.create(:name=>'Temperate broadleaf and mixed forests',:parent=>b,:sort_order=>4)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Temperate coniferous forests',:parent=>b,:sort_order=>5)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Boreal forests/taiga',:parent=>b,:sort_order=>6)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>2)
b1=Biome.create(:name=>'Tropical and subtropical grasslands, savannas, and shrublands',:parent=>b,:sort_order=>7)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Temperate grasslands, savannas, and shrublands',:parent=>b,:sort_order=>8)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Flooded grasslands and savannas',:parent=>b,:sort_order=>9)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Montane grasslands and shrublands',:parent=>b,:sort_order=>10)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Tundra',:parent=>b)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>2)
b1=Biome.create(:name=>'Mediterranean forests, woodlands, and scrub',:parent=>b,:sort_order=>11)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>5)
b1=Biome.create(:name=>'Deserts and xeric shrublands',:parent=>b,:sort_order=>11)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>5)
b1=Biome.create(:name=>'Mangroves',:parent=>b,:sort_order=>12)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neartic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>5)

b=Biome.create(:name=>'Freshwater ecoregions', :sort_order=>2)
b1=Biome.create(:name=>'Large rivers',:parent=>b,:sort_order=>1)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>5)
b1=Biome.create(:name=>'Large river headwaters',:parent=>b,:sort_order=>2)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Large river deltas',:parent=>b,:sort_order=>3)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Small rivers',:parent=>b,:sort_order=>4)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>4)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>5)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>6)
b1=Biome.create(:name=>'Large lakes',:parent=>b,:sort_order=>5)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Small lakes',:parent=>b,:sort_order=>6)
Biome.create(:name=>'Afrotropic',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Indomalaya',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Neotropic',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Xeric basins',:parent=>b,:sort_order=>7)
Biome.create(:name=>'Australasia',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Nearctic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Palearctic',:parent=>b1,:sort_order=>3)

b=Biome.create(:name=>'Marine ecoregions', :sort_order=>3)
b1=Biome.create(:name=>'Polar',:parent=>b,:sort_order=>1)
Biome.create(:name=>'Antarctic Ocean',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Arctic Ocean',:parent=>b1,:sort_order=>2)
b1=Biome.create(:name=>'Temperate shelfs and seas',:parent=>b,:sort_order=>2)
Biome.create(:name=>'Mediterranean',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'North Temperate Atlantic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'North Temperate Indo-Pacific',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Southern Ocean',:parent=>b1,:sort_order=>4)
b1=Biome.create(:name=>'Temperate upwelling',:parent=>b,:sort_order=>3)
Biome.create(:name=>'North Temperate Indo-Pacific',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'South Temperate Atlantic',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'South Temperate Indo-Pacific',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Tropical upwelling',:parent=>b,:sort_order=>4)
Biome.create(:name=>'Central Indo-Pacific',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Eastern Indo-Pacific',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Eastern Tropical Atlantic',:parent=>b1,:sort_order=>3)
b1=Biome.create(:name=>'Tropical coral',:parent=>b,:sort_order=>5)
Biome.create(:name=>'Central Indo-Pacific',:parent=>b1,:sort_order=>1)
Biome.create(:name=>'Eastern Indo-Pacific',:parent=>b1,:sort_order=>2)
Biome.create(:name=>'Western Indo-Pacific',:parent=>b1,:sort_order=>3)
Biome.create(:name=>'Western Tropical Atlantic',:parent=>b1,:sort_order=>4)

b=Biome.create(:name=>'Other (incuding urban)', :sort_order=>4)

habitat=InteractionCategory.create(:name=>'Habitat')
trophism=InteractionCategory.create(:name=>'Trophism')
reproduction=InteractionCategory.create(:name=>'Reproduction')
parasitism=InteractionCategory.create(:name=>'Parasitism and Disease')
other=InteractionCategory.create(:name=>'Other')

Interaction.create(:name=>'provides a nesting site for',:interaction_category=>habitat)
Interaction.create(:name=>'provides a nursery site for',:interaction_category=>habitat)
Interaction.create(:name=>'competes for habitat with',:interaction_category=>habitat)
Interaction.create(:name=>'creates a habitat for',:interaction_category=>habitat)
Interaction.create(:name=>'provides shelter for',:interaction_category=>habitat)
Interaction.create(:name=>'visits',:interaction_category=>habitat)
Interaction.create(:name=>'is found near',:interaction_category=>habitat)
Interaction.create(:name=>'grows on',:interaction_category=>habitat)
Interaction.create(:name=>'is a predator of',:interaction_category=>trophism)
Interaction.create(:name=>'supports the scavenger',:interaction_category=>trophism)
Interaction.create(:name=>'competes for food with',:interaction_category=>trophism)
Interaction.create(:name=>'provides nutrients for',:interaction_category=>trophism)
Interaction.create(:name=>'eats the fruit of',:interaction_category=>trophism)
Interaction.create(:name=>'eats the seeds of',:interaction_category=>trophism)
Interaction.create(:name=>'take nectar from',:interaction_category=>trophism)
Interaction.create(:name=>'forage on',:interaction_category=>trophism)
Interaction.create(:name=>'disperses seeds for',:interaction_category=>reproduction)
Interaction.create(:name=>'pollinates',:interaction_category=>reproduction)
Interaction.create(:name=>'is a disease vector to',:interaction_category=>parasitism)
Interaction.create(:name=>'is a parasite of',:interaction_category=>parasitism)
Interaction.create(:name=>'unspecified',:interaction_category=>other)

taxon=Taxon.create(:rank=>:genus,:entered_name=>"Acacia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'Mimosoideae',:tribe=>'Acacieae',:genus=>'Acacia',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Alligator mississippiensis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Alligatoridae',:sub_family=>'',:tribe=>'',:genus=>'Alligator',:species=>'mississippiensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:entered_name=>"Crocodylus acutus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Crocodylidae',:sub_family=>'Crocodylinae',:tribe=>'',:genus=>'Crocodylus',:species=>'acutus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:entered_name=>"Crematogaster ashmeadi")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'Crematogaster',:species=>'ashmeadi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:entered_name=>"Solenopsis abdita")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'Solenopsis',:species=>'abdita',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:family,:entered_name=>"Formicidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:family,:entered_name=>"Entomophthoraceae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Entomophthoraceae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Caracara cheriway")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Falconidae',:sub_family=>'Polyborinae',:tribe=>'',:genus=>'Caracara',:species=>'cheriway',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:entered_name=>"Crotalaria avonensis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'Faboideae',:tribe=>'',:genus=>'Crotalaria',:species=>'avonensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:entered_name=>"Jacquemontia reclinata")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Convolvulaceae',:sub_family=>'',:tribe=>'',:genus=>'Jacquemontia',:species=>'reclinata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Deeringothamnus pulchellus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Annonaceae',:sub_family=>'',:tribe=>'',:genus=>'Deeringothamnus',:species=>'pulchellus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Bombyliidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Bombyliidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Economically Important Pollinators')
taxon=Taxon.create(:rank=>:super_family,:entered_name=>"Apoidea")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'Apoidea',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Economically Important Pollinators')
taxon=Taxon.create(:rank=>:order,:entered_name=>"Coleoptera")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'Coleoptera',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:class,:entered_name=>"Aves")
taxonomy=Taxonomy.create(:class_rank=>'Aves',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Avicennia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Acanthaceae',:sub_family=>'',:tribe=>'',:genus=>'Avicennia',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Pithecellobium")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'',:tribe=>'',:genus=>'Pithecellobium',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Eumeces egregius lividus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Scincidae',:sub_family=>'',:tribe=>'',:genus=>'Eumeces',:species=>'egregius',:sub_species=>'lividus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Leucothrinax morrisii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Arecaceae',:sub_family=>'Coryphoideae',:tribe=>'Cryosophileae',:genus=>'Leucothrinax',:species=>'morrisii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Python molurus bivittatus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Pythonidae',:sub_family=>'',:tribe=>'',:genus=>'Python',:species=>'molurus',:sub_species=>'bivittatus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Sabal palmetto")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Sabal',:species=>'palmetto',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Ammodramus maritimus mirabilis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Ammodramus',:species=>'maritimus',:sub_species=>'mirabilis')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Warea carteri")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Warea',:species=>'carteri',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Leptotes cassius theonus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Leptotes',:species=>'cassius',:sub_species=>'theonus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Elateridae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Elateridae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Salix caroliniana")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Callinectes")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Salix',:species=>'caroliniana',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Amorpha crenulata")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Amorpha',:species=>'crenulata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Gryllidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Gryllidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Chamaesyce deltoidea")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chamaesyce',:species=>'deltoidea',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Quercus minima")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Quercus',:species=>'minima',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Juniperus virginiana")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Juniperus',:species=>'virginiana',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Sambucus canadensis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Sambucus',:species=>'canadensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Pomacea paludosa")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Pomacea',:species=>'paludosa',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Ammodramus savannarum floridanus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Ammodramus',:species=>'savannarum',:sub_species=>'floridanus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Cladonia perforata")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cladonia',:species=>'perforata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Asimina tetramera")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Asimina',:species=>'tetramera',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Cereus eriophorus var. fragrans")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cereus',:species=>'eriophorus',:sub_species=>'fragrans')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Chamaesyce garberi")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chamaesyce',:species=>'garberi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Dicerandra christmanii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'christmanii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Pyralidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Pyralidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Poaceae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Poaceae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Acrididae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Acrididae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Melanoplus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Melanoplus',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Carabidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Carabidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Psidium guajava")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Psidium',:species=>'guajava',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Halictidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Halictidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Hypericum cumulicola")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Hypericum',:species=>'cumulicola',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Apis mellifera")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Apis',:species=>'mellifera',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Morinda citrifolia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Morinda',:species=>'citrifolia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:class,:entered_name=>"Insecta")
taxonomy=Taxonomy.create(:class_rank=>'Insecta',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Orchelimum")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Orchelimum',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Odocoileus virginianus clavium")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Odocoileus',:species=>'virginianus',:sub_species=>'clavium')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Peromyscus gossypinus allapaticola")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Peromyscus',:species=>'gossypinus',:sub_species=>'allapaticola')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Neotoma floridana smalli")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Neotoma',:species=>'floridana',:sub_species=>'smalli')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Pilosocereus robinii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Pilosocereus',:species=>'robinii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Dicerandra immaculata")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'immaculata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Polygala lewtonii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygala',:species=>'lewtonii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Liatris ohlingerae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Liatris',:species=>'ohlingerae',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Cardinalis cardinalis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cardinalis',:species=>'cardinalis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Cucurbita okeechobeensis okeechobeensis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cucurbita',:species=>'okeechobeensis',:sub_species=>'okeechobeensis')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Paronychia chartacea")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Paronychia',:species=>'chartacea',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Braconidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Braconidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Stylosanthes biflora")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Stylosanthes',:species=>'biflora',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Clitoria fragrans")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Clitoria',:species=>'fragrans',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Chionanthus pygmaeus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chionanthus',:species=>'pygmaeus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Solenopsis invicta")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Solenopsis',:species=>'invicta',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Rhizophora")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:order,:entered_name=>"Rodentia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'Rodentia',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Neoseps reynoldsi")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Neoseps',:species=>'reynoldsi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Quercus inopina")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Quercus',:species=>'inopina',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Polygonella myriophylla")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygonella',:species=>'myriophylla',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Serenoa repens")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Serenoa',:species=>'repens',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Heraclides aristodemus ponceanus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Heraclides',:species=>'aristodemus',:sub_species=>'ponceanus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Dicerandra frutescens")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'frutescens',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Oligonicella scudderi")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Oligonicella',:species=>'scudderi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Conradina brevifolia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Conradina',:species=>'brevifolia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Coccothrinax argentata")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Coccothrinax',:species=>'argentata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Hesperiidae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Hesperiidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Galactia smallii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Galactia',:species=>'smallii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:entered_name=>"Rostrhamus sociabilis plumbeus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Rostrhamus',:species=>'sociabilis',:sub_species=>'plumbeus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Eryngium cuneifolium")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Eryngium',:species=>'cuneifolium',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Dialictus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dialictus',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Augochloropsis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Augochloropsis',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:entered_name=>"Araneae")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Araneae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:entered_name=>"Hypoxis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Hypoxis',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Orthalicus reses")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Orthalicus',:species=>'reses',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Polygala smallii")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygala',:species=>'smallii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Prosapia bicincta")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Prosapia',:species=>'bicincta',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Manilkara bahamensis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Manilkara',:species=>'bahamensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Xanthoxylum fagara")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Xanthoxylum',:species=>'fagara',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Polygonella basiramia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygonella',:species=>'basiramia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Gerres")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Gerres',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:entered_name=>"Florida ziziphus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Florida',:species=>'ziziphus',:sub_species=>'')
taxon.taxonomies << taxonomy


Observation.create(:left_taxon_id=>22,:right_taxon_id=>43,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>85,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>63,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>45,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>25,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>86,:interaction_id=>14)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>44,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>76,:interaction_id=>9)
Observation.create(:left_taxon_id=>35,:right_taxon_id=>89,:interaction_id=>9)
Observation.create(:left_taxon_id=>28,:right_taxon_id=>21,:interaction_id=>7)
Observation.create(:left_taxon_id=>28,:right_taxon_id=>73,:interaction_id=>7)
Observation.create(:left_taxon_id=>49,:right_taxon_id=>66,:interaction_id=>18)
Observation.create(:left_taxon_id=>13,:right_taxon_id=>30,:interaction_id=>6)
Observation.create(:left_taxon_id=>13,:right_taxon_id=>39,:interaction_id=>6)
Observation.create(:left_taxon_id=>13,:right_taxon_id=>23,:interaction_id=>6)
Observation.create(:left_taxon_id=>84,:right_taxon_id=>48,:interaction_id=>18)
Observation.create(:left_taxon_id=>15,:right_taxon_id=>38,:interaction_id=>17)
Observation.create(:left_taxon_id=>38,:right_taxon_id=>21,:interaction_id=>7)
Observation.create(:left_taxon_id=>12,:right_taxon_id=>40,:interaction_id=>18)
Observation.create(:left_taxon_id=>12,:right_taxon_id=>75,:interaction_id=>18)
Observation.create(:left_taxon_id=>60,:right_taxon_id=>56,:interaction_id=>17)
Observation.create(:left_taxon_id=>36,:right_taxon_id=>21,:interaction_id=>7)
Observation.create(:left_taxon_id=>65,:right_taxon_id=>58,:interaction_id=>7)
Observation.create(:left_taxon_id=>65,:right_taxon_id=>23,:interaction_id=>7)
Observation.create(:left_taxon_id=>14,:right_taxon_id=>37,:interaction_id=>18)
Observation.create(:left_taxon_id=>77,:right_taxon_id=>71,:interaction_id=>7)
Observation.create(:left_taxon_id=>4,:right_taxon_id=>56,:interaction_id=>13)
Observation.create(:left_taxon_id=>3,:right_taxon_id=>27,:interaction_id=>9)
Observation.create(:left_taxon_id=>9,:right_taxon_id=>36,:interaction_id=>7)
Observation.create(:left_taxon_id=>61,:right_taxon_id=>2,:interaction_id=>7)
Observation.create(:left_taxon_id=>61,:right_taxon_id=>33,:interaction_id=>8)
Observation.create(:left_taxon_id=>83,:right_taxon_id=>48,:interaction_id=>18)
Observation.create(:left_taxon_id=>11,:right_taxon_id=>73,:interaction_id=>7)
Observation.create(:left_taxon_id=>82,:right_taxon_id=>48,:interaction_id=>7)
Observation.create(:left_taxon_id=>82,:right_taxon_id=>71,:interaction_id=>7)
Observation.create(:left_taxon_id=>18,:right_taxon_id=>85,:interaction_id=>9)
Observation.create(:left_taxon_id=>18,:right_taxon_id=>29,:interaction_id=>9)
Observation.create(:left_taxon_id=>6,:right_taxon_id=>58,:interaction_id=>17)
Observation.create(:left_taxon_id=>6,:right_taxon_id=>88,:interaction_id=>17)
Observation.create(:left_taxon_id=>80,:right_taxon_id=>73,:interaction_id=>7)
Observation.create(:left_taxon_id=>47,:right_taxon_id=>10,:interaction_id=>6)
Observation.create(:left_taxon_id=>47,:right_taxon_id=>92,:interaction_id=>18)
Observation.create(:left_taxon_id=>47,:right_taxon_id=>72,:interaction_id=>18)
Observation.create(:left_taxon_id=>74,:right_taxon_id=>46,:interaction_id=>15)
Observation.create(:left_taxon_id=>74,:right_taxon_id=>91,:interaction_id=>9)
Observation.create(:left_taxon_id=>79,:right_taxon_id=>59,:interaction_id=>18)
Observation.create(:left_taxon_id=>51,:right_taxon_id=>57,:interaction_id=>18)
Observation.create(:left_taxon_id=>51,:right_taxon_id=>82,:interaction_id=>18)
Observation.create(:left_taxon_id=>10,:right_taxon_id=>21,:interaction_id=>7)
Observation.create(:left_taxon_id=>32,:right_taxon_id=>8,:interaction_id=>4)
Observation.create(:left_taxon_id=>24,:right_taxon_id=>80,:interaction_id=>18)
Observation.create(:left_taxon_id=>70,:right_taxon_id=>85,:interaction_id=>9)
Observation.create(:left_taxon_id=>55,:right_taxon_id=>54,:interaction_id=>4)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>1,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>16,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>66,:interaction_id=>14)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>78,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>19,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>90,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>50,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>56,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>17,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>42,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>68,:interaction_id=>16)
Observation.create(:left_taxon_id=>53,:right_taxon_id=>64,:interaction_id=>16)
Observation.create(:left_taxon_id=>62,:right_taxon_id=>36,:interaction_id=>7)
Observation.create(:left_taxon_id=>62,:right_taxon_id=>48,:interaction_id=>7)
Observation.create(:left_taxon_id=>54,:right_taxon_id=>55,:interaction_id=>7)
Observation.create(:left_taxon_id=>8,:right_taxon_id=>69,:interaction_id=>9)
Observation.create(:left_taxon_id=>31,:right_taxon_id=>35,:interaction_id=>5)
Observation.create(:left_taxon_id=>92,:right_taxon_id=>48,:interaction_id=>7)
Observation.create(:left_taxon_id=>41,:right_taxon_id=>75,:interaction_id=>9)
Observation.create(:left_taxon_id=>31,:right_taxon_id=>35,:interaction_id=>5)
Observation.create(:left_taxon_id=>81,:right_taxon_id=>34,:interaction_id=>9)
Observation.create(:left_taxon_id=>21,:right_taxon_id=>8,:interaction_id=>4)
Observation.create(:left_taxon_id=>26,:right_taxon_id=>81,:interaction_id=>4)
Observation.create(:left_taxon_id=>73,:right_taxon_id=>57,:interaction_id=>3)
Observation.create(:left_taxon_id=>5,:right_taxon_id=>56,:interaction_id=>13)
Observation.create(:left_taxon_id=>67,:right_taxon_id=>87,:interaction_id=>9)
Observation.create(:left_taxon_id=>7,:right_taxon_id=>28,:interaction_id=>12)
Observation.create(:left_taxon_id=>7,:right_taxon_id=>10,:interaction_id=>12)
Observation.create(:left_taxon_id=>2,:right_taxon_id=>1,:interaction_id=>11)
Observation.create(:left_taxon_id=>2,:right_taxon_id=>1,:interaction_id=>3)
