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

  it "renders a list of commandes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
