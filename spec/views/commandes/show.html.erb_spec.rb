require 'spec_helper'

describe "commandes/show.html.erb" do
  before(:each) do
    @commande = assign(:commande, stub_model(Commande,
      :produit_id => 1,
      :user_id => 1,
      :payer => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
