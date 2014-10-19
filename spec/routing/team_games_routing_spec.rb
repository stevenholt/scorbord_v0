require "spec_helper"

describe TeamGamesController do
  describe "routing" do

    it "routes to #index" do
      get("/team_games").should route_to("team_games#index")
    end

    it "routes to #new" do
      get("/team_games/new").should route_to("team_games#new")
    end

    it "routes to #show" do
      get("/team_games/1").should route_to("team_games#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_games/1/edit").should route_to("team_games#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_games").should route_to("team_games#create")
    end

    it "routes to #update" do
      put("/team_games/1").should route_to("team_games#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_games/1").should route_to("team_games#destroy", :id => "1")
    end

  end
end
