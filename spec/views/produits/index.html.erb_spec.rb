require 'spec_helper'

describe "produits/index.html.erb" do
  before(:each) do
    assign(:produits, [
      stub_model(Produit,
        :nom => "Nom",
        :prix => 1,
        :description => "Description",
        :photo => "Photo",
        :categori_id => 1,
        :quantite => 1
      ),
      stub_model(Produit,
        :nom => "Nom",
        :prix => 1,
        :description => "Description",
        :photo => "Photo",
        :categori_id => 1,
        :quantite => 1
      )
    ])
  end

  it "renders a list of produits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
