require 'spec_helper'

describe "produits/show.html.erb" do
  before(:each) do
    @produit = assign(:produit, stub_model(Produit,
      :nom => "Nom",
      :prix => 1,
      :description => "Description",
      :photo => "Photo",
      :categori_id => 1,
      :quantite => 1
    ))
  end

  
end
