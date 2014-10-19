require "spec_helper"

describe TeamMembershipsController do
  describe "routing" do

    it "routes to #index" do
      get("/team_memberships").should route_to("team_memberships#index")
    end

    it "routes to #new" do
      get("/team_memberships/new").should route_to("team_memberships#new")
    end

    it "routes to #show" do
      get("/team_memberships/1").should route_to("team_memberships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_memberships/1/edit").should route_to("team_memberships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_memberships").should route_to("team_memberships#create")
    end

    it "routes to #update" do
      put("/team_memberships/1").should route_to("team_memberships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_memberships/1").should route_to("team_memberships#destroy", :id => "1")
    end

  end
end
