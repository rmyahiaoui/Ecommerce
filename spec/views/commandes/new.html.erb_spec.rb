require 'spec_helper'

describe "commandes/new.html.erb" do
  before(:each) do
    assign(:commande, stub_model(Commande,
      :produit_id => 1,
      :user_id => 1,
      :payer => false
    ).as_new_record)
  end

  it "renders new commande form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    
  end
end
