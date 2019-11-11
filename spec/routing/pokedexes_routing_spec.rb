require "rails_helper"

RSpec.describe PokedexesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/pokedexes").to route_to("pokedexes#index")
    end

    it "routes to error page" do
      expect(:get => "*a").to route_to("errors#routing")
    end

    it "routes to #show" do
      expect(:get => "/pokedexes/1").to route_to("pokedexes#show", :id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pokedexes/1").to route_to("pokedexes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pokedexes/1").to route_to("pokedexes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pokedexes/1").to route_to("pokedexes#destroy", :id => "1")
    end
  end
end
