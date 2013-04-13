require 'spec_helper'

describe "commandes/new.html.erb" do
  before(:each) do
    assign(:commande, stub_model(Commande,
      :produit_id => 1,
      :user_id => 1,
      :payer => false
    ).as_new_record)
  end

  it "renders new commande form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commandes_path, :method => "post" do
      assert_select "input#commande_produit_id", :name => "commande[produit_id]"
      assert_select "input#commande_user_id", :name => "commande[user_id]"
      assert_select "input#commande_payer", :name => "commande[payer]"
    end
  end
end
