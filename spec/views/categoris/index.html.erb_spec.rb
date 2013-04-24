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

  
end
