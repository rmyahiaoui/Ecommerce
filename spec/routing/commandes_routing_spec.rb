require "spec_helper"

describe CommandesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/commandes" }.should route_to(:controller => "commandes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/commandes/new" }.should route_to(:controller => "commandes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/commandes/1" }.should route_to(:controller => "commandes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/commandes/1/edit" }.should route_to(:controller => "commandes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/commandes" }.should route_to(:controller => "commandes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/commandes/1" }.should route_to(:controller => "commandes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/commandes/1" }.should route_to(:controller => "commandes", :action => "destroy", :id => "1")
    end

  end
end
