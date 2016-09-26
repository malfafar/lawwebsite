require "rails_helper"

RSpec.describe PrivateInformationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/private_informations").to route_to("private_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/private_informations/new").to route_to("private_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/private_informations/1").to route_to("private_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/private_informations/1/edit").to route_to("private_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/private_informations").to route_to("private_informations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/private_informations/1").to route_to("private_informations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/private_informations/1").to route_to("private_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/private_informations/1").to route_to("private_informations#destroy", :id => "1")
    end

  end
end
