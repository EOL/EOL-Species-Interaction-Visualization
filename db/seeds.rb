# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Ecosystem.create(:name=>'Florida Everglades',:description=>'Selected species from a threatened ecosystem in Florida.')
Ecosystem.create(:name=>'Economically Important Pollinators',:description=>'elected pollinators of US crops.')

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

taxon=Taxon.create(:rank=>:genus,:group=>'5',:scientific_name=>"Acacia",:common_name=>"Acacia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'Mimosoideae',:tribe=>'Acacieae',:genus=>'Acacia',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'3',:scientific_name=>"Alligator mississippiensis",:common_name=>"American alligator")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Alligatoridae',:sub_family=>'',:tribe=>'',:genus=>'Alligator',:species=>'mississippiensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:group=>'4',:scientific_name=>"Crocodylus acutus",:common_name=>"American crocodile")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Crocodylidae',:sub_family=>'Crocodylinae',:tribe=>'',:genus=>'Crocodylus',:species=>'acutus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Crematogaster ashmeadi",:common_name=>"Ant")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'Crematogaster',:species=>'ashmeadi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Solenopsis abdita",:common_name=>"Ant")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'Solenopsis',:species=>'abdita',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Formicidae",:common_name=>"Ants")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Formicidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:family,:group=>'6',:scientific_name=>"Entomophthoraceae",:common_name=>"Arbuscular mycorrhiza")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Entomophthoraceae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:sub_species,:group=>'0',:scientific_name=>"Caracara cheriway",:common_name=>"Audubon's crested caracara")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Falconidae',:sub_family=>'Polyborinae',:tribe=>'',:genus=>'Caracara',:species=>'cheriway',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Crotalaria avonensis",:common_name=>"Avon Park harebells")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'Faboideae',:tribe=>'',:genus=>'Crotalaria',:species=>'avonensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Florida Everglades')
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Jacquemontia reclinata",:common_name=>"Beach jacquemontia")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Convolvulaceae',:sub_family=>'',:tribe=>'',:genus=>'Jacquemontia',:species=>'reclinata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Deeringothamnus pulchellus",:common_name=>"Beautiful pawpaw")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Annonaceae',:sub_family=>'',:tribe=>'',:genus=>'Deeringothamnus',:species=>'pulchellus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Bombyliidae",:common_name=>"Bee-flies")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Bombyliidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Economically Important Pollinators')
taxon=Taxon.create(:rank=>:super_family,:group=>'1',:scientific_name=>"Apoidea",:common_name=>"Bees")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'Apoidea',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon.ecosystems << Ecosystem.find_by_name('Economically Important Pollinators')
taxon=Taxon.create(:rank=>:order,:group=>'1',:scientific_name=>"Coleoptera",:common_name=>"Beetles")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'Coleoptera',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:class,:group=>'0',:scientific_name=>"Aves",:common_name=>"Birds")
taxonomy=Taxonomy.create(:class_rank=>'Aves',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'5',:scientific_name=>"Avicennia",:common_name=>"Black mangrove")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Acanthaceae',:sub_family=>'',:tribe=>'',:genus=>'Avicennia',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'6',:scientific_name=>"Pithecellobium",:common_name=>"Blackbead")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Fabaceae',:sub_family=>'',:tribe=>'',:genus=>'Pithecellobium',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'4',:scientific_name=>"Eumeces egregius lividus",:common_name=>"Bluetail (blue-tailed) mole skink")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Scincidae',:sub_family=>'',:tribe=>'',:genus=>'Eumeces',:species=>'egregius',:sub_species=>'lividus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Leucothrinax morrisii",:common_name=>"Brittle Thatch Palm fruit")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Arecaceae',:sub_family=>'Coryphoideae',:tribe=>'Cryosophileae',:genus=>'Leucothrinax',:species=>'morrisii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'4',:scientific_name=>"Python molurus bivittatus",:common_name=>"Burmese python")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Pythonidae',:sub_family=>'',:tribe=>'',:genus=>'Python',:species=>'molurus',:sub_species=>'bivittatus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Sabal palmetto",:common_name=>"Cabbage palm")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Sabal',:species=>'palmetto',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'0',:scientific_name=>"Ammodramus maritimus mirabilis",:common_name=>"Cape Sable seaside sparrow")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Ammodramus',:species=>'maritimus',:sub_species=>'mirabilis')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Warea carteri",:common_name=>"Carter's mustard")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Warea',:species=>'carteri',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'1',:scientific_name=>"Leptotes cassius theonus",:common_name=>"Cassius blue butterfly")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Leptotes',:species=>'cassius',:sub_species=>'theonus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Elateridae",:common_name=>"Click beetles")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Elateridae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Salix caroliniana",:common_name=>"Coastal plain willow")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'6',:scientific_name=>"Callinectes",:common_name=>"Crabs")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Salix',:species=>'caroliniana',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Amorpha crenulata",:common_name=>"Crenulate lead-plant")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Amorpha',:species=>'crenulata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Gryllidae",:common_name=>"Crickets")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Gryllidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Chamaesyce deltoidea",:common_name=>"Deltoid spurge")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chamaesyce',:species=>'deltoidea',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Quercus minima",:common_name=>"Drawf live oak")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Quercus',:species=>'minima',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Juniperus virginiana",:common_name=>"Eastern Red Ceder")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Juniperus',:species=>'virginiana',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Sambucus canadensis",:common_name=>"Elderberry")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Sambucus',:species=>'canadensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'3',:scientific_name=>"Pomacea paludosa",:common_name=>"Florida apple snail")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Pomacea',:species=>'paludosa',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'0',:scientific_name=>"Ammodramus savannarum floridanus",:common_name=>"Florida grasshopper sparrow")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Ammodramus',:species=>'savannarum',:sub_species=>'floridanus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'6',:scientific_name=>"Cladonia perforata",:common_name=>"Florida perforate reindeer lichen")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cladonia',:species=>'perforata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Asimina tetramera",:common_name=>"Four-petal pawpaw")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Asimina',:species=>'tetramera',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'5',:scientific_name=>"Cereus eriophorus var. fragrans",:common_name=>"Fragrant prickly-apple")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cereus',:species=>'eriophorus',:sub_species=>'fragrans')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Chamaesyce garberi",:common_name=>"Garber's spurge")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chamaesyce',:species=>'garberi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Dicerandra christmanii",:common_name=>"Garrett's mint")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'christmanii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Pyralidae",:common_name=>"Grass moths")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Pyralidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'6',:scientific_name=>"Poaceae",:common_name=>"Grasses")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Poaceae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Acrididae",:common_name=>"Grasshoppers")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Acrididae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'1',:scientific_name=>"Melanoplus",:common_name=>"Grasshoppers")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Melanoplus',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Carabidae",:common_name=>"Ground beetles")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Carabidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Psidium guajava",:common_name=>"Guava")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Psidium',:species=>'guajava',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Halictidae",:common_name=>"Halictid bees")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Halictidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Hypericum cumulicola",:common_name=>"Highlands scrub hypericum")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Hypericum',:species=>'cumulicola',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Apis mellifera",:common_name=>"Honey bees")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Apis',:species=>'mellifera',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Morinda citrifolia",:common_name=>"Indian Mulberry")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Morinda',:species=>'citrifolia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:class,:group=>'1',:scientific_name=>"Insecta",:common_name=>"Insects")
taxonomy=Taxonomy.create(:class_rank=>'Insecta',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'1',:scientific_name=>"Orchelimum",:common_name=>"Katydids")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Orchelimum',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'2',:scientific_name=>"Odocoileus virginianus clavium",:common_name=>"Key deer")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Odocoileus',:species=>'virginianus',:sub_species=>'clavium')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'2',:scientific_name=>"Peromyscus gossypinus allapaticola",:common_name=>"Key Largo cotton mouse")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Peromyscus',:species=>'gossypinus',:sub_species=>'allapaticola')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'2',:scientific_name=>"Neotoma floridana smalli",:common_name=>"Key Largo woodrat")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Neotoma',:species=>'floridana',:sub_species=>'smalli')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Pilosocereus robinii",:common_name=>"Key tree-cactus")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Pilosocereus',:species=>'robinii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Dicerandra immaculata",:common_name=>"Lakela's mint")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'immaculata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Polygala lewtonii",:common_name=>"Lewton's polygala")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygala',:species=>'lewtonii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Liatris ohlingerae",:common_name=>"Scrub blazing star")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Liatris',:species=>'ohlingerae',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'0',:scientific_name=>"Cardinalis cardinalis",:common_name=>"Northern Cardinal")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cardinalis',:species=>'cardinalis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'5',:scientific_name=>"Cucurbita okeechobeensis okeechobeensis",:common_name=>"Okeechobee gourd")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Cucurbita',:species=>'okeechobeensis',:sub_species=>'okeechobeensis')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Paronychia chartacea",:common_name=>"Papery whitlow-wort")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Paronychia',:species=>'chartacea',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Braconidae",:common_name=>"Parasitic wasp")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Braconidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Stylosanthes biflora",:common_name=>"Pencil Flower")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Stylosanthes',:species=>'biflora',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Clitoria fragrans",:common_name=>"Pigeon wings")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Clitoria',:species=>'fragrans',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Chionanthus pygmaeus",:common_name=>"Pygmy fringe-tree")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Chionanthus',:species=>'pygmaeus',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Solenopsis invicta",:common_name=>"Red imported fire ant")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Solenopsis',:species=>'invicta',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'5',:scientific_name=>"Rhizophora",:common_name=>"Red mangrove")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:order,:group=>'2',:scientific_name=>"Rodentia",:common_name=>"Rodents")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'Rodentia',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'4',:scientific_name=>"Neoseps reynoldsi",:common_name=>"Sand skink")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Neoseps',:species=>'reynoldsi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Quercus inopina",:common_name=>"Sandhill oak")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Quercus',:species=>'inopina',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Polygonella myriophylla",:common_name=>"Sandlace")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygonella',:species=>'myriophylla',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Serenoa repens",:common_name=>"Saw palmetto")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Serenoa',:species=>'repens',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'1',:scientific_name=>"Heraclides aristodemus ponceanus",:common_name=>"Schaus swallowtail butterfly")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Heraclides',:species=>'aristodemus',:sub_species=>'ponceanus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Dicerandra frutescens",:common_name=>"Scrub mint")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dicerandra',:species=>'frutescens',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Oligonicella scudderi",:common_name=>"Scudder's mantis")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Oligonicella',:species=>'scudderi',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Conradina brevifolia",:common_name=>"Short-leaved rosemary")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Conradina',:species=>'brevifolia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Coccothrinax argentata",:common_name=>"Silver Thatch Palm fruit")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Coccothrinax',:species=>'argentata',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'1',:scientific_name=>"Hesperiidae",:common_name=>"Skippers")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Hesperiidae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Galactia smallii",:common_name=>"Small's milkpea")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Galactia',:species=>'smallii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:sub_species,:group=>'0',:scientific_name=>"Rostrhamus sociabilis plumbeus",:common_name=>"Snail kite")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Rostrhamus',:species=>'sociabilis',:sub_species=>'plumbeus')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Eryngium cuneifolium",:common_name=>"Snakeroot")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Eryngium',:species=>'cuneifolium',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'1',:scientific_name=>"Dialictus",:common_name=>"Solitary bees")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Dialictus',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'1',:scientific_name=>"Augochloropsis",:common_name=>"Solitary bees")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Augochloropsis',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:family,:group=>'6',:scientific_name=>"Araneae",:common_name=>"Spiders")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'Araneae',:sub_family=>'',:tribe=>'',:genus=>'',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:genus,:group=>'5',:scientific_name=>"Hypoxis",:common_name=>"Stargrass")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Hypoxis',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'3',:scientific_name=>"Orthalicus reses",:common_name=>"Stock Island tree snail")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Orthalicus',:species=>'reses',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Polygala smallii",:common_name=>"Tiny polygala")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygala',:species=>'smallii',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'1',:scientific_name=>"Prosapia bicincta",:common_name=>"Two-lined spittlebug")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Prosapia',:species=>'bicincta',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Manilkara bahamensis",:common_name=>"Wild Dilly fruits")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Manilkara',:species=>'bahamensis',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Xanthoxylum fagara",:common_name=>"Wild Lime")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Xanthoxylum',:species=>'fagara',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Polygonella basiramia",:common_name=>"Wireweed")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Polygonella',:species=>'basiramia',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'6',:scientific_name=>"Gerres",:common_name=>"Yellowfin mojarras")
taxonomy=Taxonomy.create(:class_rank=>'',:order=>'',:super_family=>'',:family=>'',:sub_family=>'',:tribe=>'',:genus=>'Gerres',:species=>'',:sub_species=>'')
taxon.taxonomies << taxonomy
taxon=Taxon.create(:rank=>:species,:group=>'5',:scientific_name=>"Florida ziziphus",:common_name=>"Ziziphus celata")
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