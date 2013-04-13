require 'spec_helper'

describe "categoris/new.html.erb" do
  before(:each) do
    assign(:categori, stub_model(Categori,
      :nom => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new categori form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categoris_path, :method => "post" do
      assert_select "input#categori_nom", :name => "categori[nom]"
      assert_select "input#categori_description", :name => "categori[description]"
    end
  end
end
