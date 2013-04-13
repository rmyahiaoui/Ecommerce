require 'spec_helper'

describe "categoris/edit.html.erb" do
  before(:each) do
    @categori = assign(:categori, stub_model(Categori,
      :nom => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit categori form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categoris_path(@categori), :method => "post" do
      assert_select "input#categori_nom", :name => "categori[nom]"
      assert_select "input#categori_description", :name => "categori[description]"
    end
  end
end
