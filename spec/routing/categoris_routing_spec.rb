require "spec_helper"

describe CategorisController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/categoris" }.should route_to(:controller => "categoris", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/categoris/new" }.should route_to(:controller => "categoris", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/categoris/1" }.should route_to(:controller => "categoris", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/categoris/1/edit" }.should route_to(:controller => "categoris", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/categoris" }.should route_to(:controller => "categoris", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/categoris/1" }.should route_to(:controller => "categoris", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/categoris/1" }.should route_to(:controller => "categoris", :action => "destroy", :id => "1")
    end

  end
end
