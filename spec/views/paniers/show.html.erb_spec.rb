require 'spec_helper'

describe "paniers/show.html.erb" do
  before(:each) do
    @panier = assign(:panier, stub_model(Panier,
      :produit_id => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
