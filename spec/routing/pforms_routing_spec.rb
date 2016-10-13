require "rails_helper"

RSpec.describe PformsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pforms").to route_to("pforms#index")
    end

    it "routes to #new" do
      expect(:get => "/pforms/new").to route_to("pforms#new")
    end

    it "routes to #show" do
      expect(:get => "/pforms/1").to route_to("pforms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pforms/1/edit").to route_to("pforms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pforms").to route_to("pforms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pforms/1").to route_to("pforms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pforms/1").to route_to("pforms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pforms/1").to route_to("pforms#destroy", :id => "1")
    end

  end
end
