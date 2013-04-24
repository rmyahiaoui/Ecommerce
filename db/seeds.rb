# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

  categoris = Categori.create([
        {:nom => 'voiture', :description => 'Les meilleurs accessoires pour votre voiture !'},
        {:nom => 'moto', :description => 'Tout ce qu\'il faut pour votre moto !'},
        {:nom => 'photo', :description => 'Tout le materiel pour vos photos !'}
        ])

  produits = Produit.create([
        {:nom => 'Jantes VENTI', :prix => 124, :description => 'jantes alu VENTI 17X7 4T108 ET25 65,1', :photo => '', :categori_id => 1, :quantite => 15},
        {:nom => 'Jantes LOUNGE8', :prix => 169, :description => 'jantes alu LOUNGE8 15X6,5 4X108 ET25 ', :photo => '', :categori_id => 1, :quantite => 15},
        {:nom => 'Jantes ENVY', :prix => 203, :description => 'jantes alu ENVY 16X7 4X108 ET25 ', :photo => '', :categori_id => 1, :quantite => 15},
        {:nom => 'Jantes VOLCANE ET25', :prix => 65, :description => 'jantes alu JTE VOLCANE 6X14 4X108 ET25 Silver ', :photo => '', :categori_id => 1, :quantite => 15},
        {:nom => 'Jantes VOLCANE ET18', :prix => 124, :description => 'jantes alu Jante VOLCANE 6X14 4X108 ET18 Silver ', :photo => '', :categori_id => 1, :quantite => 15},
        {:nom => 'Antivol Block SILVER', :prix => 85, :description => 'Antivol Top Block SILVER DF 16/250 SRA NF/FFMC ', :photo => '', :categori_id => 2, :quantite => 15},
        {:nom => 'Antivol BULLET', :prix => 71, :description => 'Antivol XENA BULLET XSU-270 SERIES 3 SRA NF/FFMC ', :photo => '', :categori_id => 2, :quantite => 15},
        {:nom => 'Antivol NEXUS', :prix => 77, :description => 'Antivol Top Block NEXUS 124/270 H classe SRA/NF/FFMC', :photo => '', :categori_id => 2, :quantite => 15},
        {:nom => 'Antivol XSU 310S', :prix => 70, :description => 'Antivol XENA XSU 310S SERIES 3 SRA/NF/FFMC', :photo => '', :categori_id => 2, :quantite => 15},
        {:nom => 'Antivol XSU 310', :prix => 74, :description => 'Antivol XENA XSU 310 SERIES 3 SRA/NF/FFMC ', :photo => '', :categori_id => 2, :quantite => 15},
        ])

  users = User.create([
        {:username => 'rmyahiaoui1', :email => 'rmyahiaoui1@gmail.com', :password => 'toto', :password_confirmation => 'toto',
         :photo => '', :adress => '', :code_postal => 0, :ville => '', :pay => '', :admin => false},
        {:username => 'athomas', :email => 'athomas@gmail.com', :password => 'titi', :password_confirmation => 'titi',
         :photo => '', :adress => '', :code_postal => 0, :ville => '', :pay => '', :admin => false},
        {:username => 'admin', :email => 'admin@gmail.com', :password => 'admin', :password_confirmation => 'admin',
         :photo => '', :adress => '', :code_postal => 0, :ville => '', :pay => '', :admin => true}
        ])
  
