require 'spec_helper'

describe "categoris/show.html.erb" do
  before(:each) do
    @categori = assign(:categori, stub_model(Categori,
      :nom => "Nom",
      :description => "Description"
    ))
  end

  
end
