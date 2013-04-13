require 'spec_helper'

describe "paniers/edit.html.erb" do
  before(:each) do
    @panier = assign(:panier, stub_model(Panier,
      :produit_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit panier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paniers_path(@panier), :method => "post" do
      assert_select "input#panier_produit_id", :name => "panier[produit_id]"
      assert_select "input#panier_user_id", :name => "panier[user_id]"
    end
  end
end
