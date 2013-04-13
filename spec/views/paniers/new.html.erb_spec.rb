require 'spec_helper'

describe "paniers/new.html.erb" do
  before(:each) do
    assign(:panier, stub_model(Panier,
      :produit_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new panier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paniers_path, :method => "post" do
      assert_select "input#panier_produit_id", :name => "panier[produit_id]"
      assert_select "input#panier_user_id", :name => "panier[user_id]"
    end
  end
end
