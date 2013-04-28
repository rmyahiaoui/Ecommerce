require 'spec_helper'

describe User do
	before(:each) do
		@attr = { :username => "nom utilisateur", :email => "nom.utilisateur@domaine.com", 
                :password => "toto",:password_confirmation => "toto",
                :photo => "photo.jpeg", :adress => "1 rue de Paris", 
                :code_postal => 59800, :ville => 'Lille', :pay => "France" }
	end
	it "devrait creer une nouvelle instance dotee des attributs valides" do
		User.create!(@attr)
	end

    it "exige un nom" do
        bad_user = User.new(@attr.merge(:username => ""))
        bad_user.should_not be_valid
    end

    it "refuse les noms de + de 50 car. " do
        bad_user = User.new(@attr.merge(:username => "x" * 51))
        bad_user.should_not be_valid
    end

    it "exige un email" do
        bad_user = User.new(@attr.merge(:email => ""))
        bad_user.should_not be_valid
    end

    it "refuse les emails de + de 100 car. " do
        bad_user = User.new(@attr.merge(:email => "x" * 101))
        bad_user.should_not be_valid
    end

    it "accepte les emails bien formes." do
        adresses_mail = %w[nom@domaine.com Prenom_NOM@sous.domaine.fr p1.nom2@mondomaine.org]
        adresses_mail.each do |address|
            good_user = User.new(@attr.merge(:email => address))
            good_user.should be_valid
        end
    end

    it "refuse les emails mal formes." do
        adresses = %w[nom@domaine,com Prenom_NOM@sous.domaine. p1.nom2mondomaine.org]
        adresses.each do |address|
            bad_user = User.new(@attr.merge(:email => address))
            bad_user.should_not be_valid
        end
    end

    it "rejete un email en doublon" do
        User.create!(@attr)
        user_en_doublon_email = User.new(@attr)
        user_en_doublon_email.should_not be_valid
    end

    it "exige une adresse" do
        bad_user = User.new(@attr.merge(:adress => ""))
        bad_user.should_not be_valid
    end

    it "refuse les noms de + de 80 car. " do
        bad_user = User.new(@attr.merge(:adress => "x" * 81))
        bad_user.should_not be_valid
    end

    it "exige un code postal" do
        bad_user = User.new(@attr.merge(:code_postal => nil))
        bad_user.should_not be_valid
    end

    it "exige un code sur 5 chiffres maxi" do
        bad_user = User.new(@attr.merge(:code_postal => 100000))
        bad_user.should_not be_valid
    end

    it "exige un code sur 4 chiffres mini" do
        bad_user = User.new(@attr.merge(:code_postal => 999))
        bad_user.should_not be_valid
    end

    it "exige une ville" do
        bad_user = User.new(@attr.merge(:ville => ""))
        bad_user.should_not be_valid
    end

    it "refuse les ville de + de 50 car. " do
        bad_user = User.new(@attr.merge(:ville => "x" * 51))
        bad_user.should_not be_valid
    end

    it "exige un pays" do
        bad_user = User.new(@attr.merge(:pay => ""))
        bad_user.should_not be_valid
    end

    it "refuse les noms de + de 50 car. " do
        bad_user = User.new(@attr.merge(:pay => "x" * 51))
        bad_user.should_not be_valid
    end

end
