require 'spec_helper'

describe "Paniers" do
  describe "GET /paniers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get paniers_path
      response.status.should be(200)
    end
  end
end
