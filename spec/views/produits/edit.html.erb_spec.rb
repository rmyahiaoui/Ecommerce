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

  
end
