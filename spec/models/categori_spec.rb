require 'spec_helper'

describe Categori do

	before(:each) do
		@attr = { :nom => "Nom de categorie", :description => "description de la categorie"}
	end
	it "devrait creer une nouvelle instance dotee des attributs valides" do
		Categori.create!(@attr)
	end

    it "exige un nom" do
        bad_cat = Categori.new(@attr.merge(:nom => ""))
        bad_cat.should_not be_valid
    end

    it "exige une description" do
        bad_cat = Categori.new(@attr.merge(:description => ""))
        bad_cat.should_not be_valid
    end

    it "refuse les noms de + de 50 car. " do
        bad_cat = Categori.new(@attr.merge(:nom => "x" * 51))
        bad_cat.should_not be_valid
    end

    it "refuse les descriptions de + de 250 car. " do
        bad_cat = Categori.new(@attr.merge(:description => "x" * 251))
        bad_cat.should_not be_valid
    end
end
