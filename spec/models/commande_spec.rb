require 'spec_helper'

describe Commande do
 before(:each) do
	@attr = { :produit_id => 1, :user_id => 1}
		end
			it "devrait creer une nouvelle instance dotee des attributs valides" do
			Commande.create!(@attr)
		end

end
