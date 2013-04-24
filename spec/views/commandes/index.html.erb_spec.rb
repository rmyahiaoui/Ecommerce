require 'spec_helper'

describe "commandes/index.html.erb" do
  before(:each) do
    assign(:commandes, [
      stub_model(Commande,
        :produit_id => 1,
        :user_id => 1,
        :payer => false
      ),
      stub_model(Commande,
        :produit_id => 1,
        :user_id => 1,
        :payer => false
      )
    ])
  end

 
end
