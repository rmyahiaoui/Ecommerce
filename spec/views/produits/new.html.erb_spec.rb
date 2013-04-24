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

  
end
