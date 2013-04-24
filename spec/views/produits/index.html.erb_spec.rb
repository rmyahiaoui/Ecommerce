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

  
end
