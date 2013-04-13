require 'spec_helper'

describe "categoris/index.html.erb" do
  before(:each) do
    assign(:categoris, [
      stub_model(Categori,
        :nom => "Nom",
        :description => "Description"
      ),
      stub_model(Categori,
        :nom => "Nom",
        :description => "Description"
      )
    ])
  end

  it "renders a list of categoris" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
