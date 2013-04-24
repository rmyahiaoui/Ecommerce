require 'spec_helper'

describe Categori do

	before(:each) do
		@attr = { :nom => "voiture"}
	end
	it "devrait creer une nouvelle instance dotee des attributs valides" do
		Categori.create!(@attr)
	end

end
