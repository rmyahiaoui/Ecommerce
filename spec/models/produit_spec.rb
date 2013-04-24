require 'spec_helper'

describe Produit do
 before(:each) do
	@attr = { :nom => "206", :prix => 1000, :photo => "206.jpeg",:quantite => 100}
		end
			it "devrait creer une nouvelle instance dotee des attributs valides" do
			Produit.create!(@attr)
		end
	
end
