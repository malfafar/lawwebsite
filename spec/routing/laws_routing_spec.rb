require "rails_helper"

RSpec.describe LawsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/laws").to route_to("laws#index")
    end

    it "routes to #new" do
      expect(:get => "/laws/new").to route_to("laws#new")
    end

    it "routes to #show" do
      expect(:get => "/laws/1").to route_to("laws#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/laws/1/edit").to route_to("laws#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/laws").to route_to("laws#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/laws/1").to route_to("laws#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/laws/1").to route_to("laws#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/laws/1").to route_to("laws#destroy", :id => "1")
    end

  end
end
