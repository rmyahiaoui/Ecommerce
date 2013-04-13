require "spec_helper"

describe ProduitsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/produits" }.should route_to(:controller => "produits", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/produits/new" }.should route_to(:controller => "produits", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/produits/1" }.should route_to(:controller => "produits", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/produits/1/edit" }.should route_to(:controller => "produits", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/produits" }.should route_to(:controller => "produits", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/produits/1" }.should route_to(:controller => "produits", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/produits/1" }.should route_to(:controller => "produits", :action => "destroy", :id => "1")
    end

  end
end
