require "rails_helper"

RSpec.describe PetsController, type: :routing do
  describe "routing API" do

    it "routes to API pets" do
      expect(:get => "/api/pets/1").to route_to("pets#pet", :id => "1")
    end

    it "routes to API owner" do
      expect(:get => "/api/owner/1").to route_to("pets#owner", :id => "1")
    end

    it "routes to API image" do
      expect(:get => "/api/image/1").to route_to("pets#image", :id => "1")
    end
  end
end
