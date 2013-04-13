require 'spec_helper'

describe "produits/new.html.erb" do
  before(:each) do
    assign(:produit, stub_model(Produit,
      :nom => "MyString",
      :prix => 1,
      :description => "MyString",
      :photo => "MyString",
      :categori_id => 1,
      :quantite => 1
    ).as_new_record)
  end

  it "renders new produit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produits_path, :method => "post" do
      assert_select "input#produit_nom", :name => "produit[nom]"
      assert_select "input#produit_prix", :name => "produit[prix]"
      assert_select "input#produit_description", :name => "produit[description]"
      assert_select "input#produit_photo", :name => "produit[photo]"
      assert_select "input#produit_categori_id", :name => "produit[categori_id]"
      assert_select "input#produit_quantite", :name => "produit[quantite]"
    end
  end
end
