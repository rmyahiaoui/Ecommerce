require 'spec_helper'

describe "categoris/edit.html.erb" do
  before(:each) do
    @categori = assign(:categori, stub_model(Categori,
      :nom => "MyString",
      :description => "MyString"
    ))
  end

  
end
