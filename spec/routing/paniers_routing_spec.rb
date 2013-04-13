require "spec_helper"

describe PaniersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/paniers" }.should route_to(:controller => "paniers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/paniers/new" }.should route_to(:controller => "paniers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/paniers/1" }.should route_to(:controller => "paniers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/paniers/1/edit" }.should route_to(:controller => "paniers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/paniers" }.should route_to(:controller => "paniers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/paniers/1" }.should route_to(:controller => "paniers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/paniers/1" }.should route_to(:controller => "paniers", :action => "destroy", :id => "1")
    end

  end
end
