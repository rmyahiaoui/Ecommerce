require 'spec_helper'

describe "commandes/show.html.erb" do
  before(:each) do
    @commande = assign(:commande, stub_model(Commande,
      :produit_id => 1,
      :user_id => 1,
      :payer => false
    ))
  end

 
end
