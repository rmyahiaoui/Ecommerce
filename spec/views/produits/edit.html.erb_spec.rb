require 'spec_helper'

describe "produits/edit.html.erb" do
  before(:each) do
    @produit = assign(:produit, stub_model(Produit,
      :nom => "MyString",
      :prix => 1,
      :description => "MyString",
      :photo => "MyString",
      :categori_id => 1,
      :quantite => 1
    ))
  end

  it "renders the edit produit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produits_path(@produit), :method => "post" do
      assert_select "input#produit_nom", :name => "produit[nom]"
      assert_select "input#produit_prix", :name => "produit[prix]"
      assert_select "input#produit_description", :name => "produit[description]"
      assert_select "input#produit_photo", :name => "produit[photo]"
      assert_select "input#produit_categori_id", :name => "produit[categori_id]"
      assert_select "input#produit_quantite", :name => "produit[quantite]"
    end
  end
end
