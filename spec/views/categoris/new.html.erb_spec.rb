require 'spec_helper'

describe "categoris/new.html.erb" do
  before(:each) do
    assign(:categori, stub_model(Categori,
      :nom => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  
end
