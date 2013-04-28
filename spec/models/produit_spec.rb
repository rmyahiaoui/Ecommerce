require 'spec_helper'

describe Produit do
 before(:each) do
	@attr = { :nom => "nom de produit", :prix => 100, :photo => "photo.jpeg",
            :description => "description de la categorie...",
            :categori_id => 1, :quantite => 100}
		end
			it "devrait creer une nouvelle instance dotee des attributs valides" do
			Produit.create!(@attr)
		end

    it "exige un nom" do
        bad_prod = Produit.new(@attr.merge(:nom => ""))
        bad_prod.should_not be_valid
    end

    it "refuse les noms de + de 50 car. " do
        bad_prod = Produit.new(@attr.merge(:nom => "x" * 51))
        bad_prod.should_not be_valid
    end

    it "exige une description" do
        bad_prod = Produit.new(@attr.merge(:description => ""))
        bad_prod.should_not be_valid
    end

    it "refuse les descriptions de + de 250 car. " do
        bad_prod = Produit.new(@attr.merge(:description => "x" * 251))
        bad_prod.should_not be_valid
    end

    it "refuse les photos de + de 25 car. " do
        bad_prod = Produit.new(@attr.merge(:photo => "x" * 26))
        bad_prod.should_not be_valid
    end

    it "exige un prix" do
        bad_prod = Produit.new(@attr.merge(:prix => nil))
        bad_prod.should_not be_valid
    end

    it "exige une categorie" do
        bad_prod = Produit.new(@attr.merge(:categori_id => nil))
        bad_prod.should_not be_valid
    end

    it "exige une quantite" do
        bad_prod = Produit.new(@attr.merge(:quantite => nil))
        bad_prod.should_not be_valid
    end

end
