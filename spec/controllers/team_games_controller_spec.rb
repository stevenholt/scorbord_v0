require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TeamGamesController do

  # This should return the minimal set of attributes required to create a valid
  # TeamGame. As you add validations to TeamGame, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TeamGamesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all team_games as @team_games" do
      team_game = TeamGame.create! valid_attributes
      get :index, {}, valid_session
      assigns(:team_games).should eq([team_game])
    end
  end

  describe "GET show" do
    it "assigns the requested team_game as @team_game" do
      team_game = TeamGame.create! valid_attributes
      get :show, {:id => team_game.to_param}, valid_session
      assigns(:team_game).should eq(team_game)
    end
  end

  describe "GET new" do
    it "assigns a new team_game as @team_game" do
      get :new, {}, valid_session
      assigns(:team_game).should be_a_new(TeamGame)
    end
  end

  describe "GET edit" do
    it "assigns the requested team_game as @team_game" do
      team_game = TeamGame.create! valid_attributes
      get :edit, {:id => team_game.to_param}, valid_session
      assigns(:team_game).should eq(team_game)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TeamGame" do
        expect {
          post :create, {:team_game => valid_attributes}, valid_session
        }.to change(TeamGame, :count).by(1)
      end

      it "assigns a newly created team_game as @team_game" do
        post :create, {:team_game => valid_attributes}, valid_session
        assigns(:team_game).should be_a(TeamGame)
        assigns(:team_game).should be_persisted
      end

      it "redirects to the created team_game" do
        post :create, {:team_game => valid_attributes}, valid_session
        response.should redirect_to(TeamGame.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved team_game as @team_game" do
        # Trigger the behavior that occurs when invalid params are submitted
        TeamGame.any_instance.stub(:save).and_return(false)
        post :create, {:team_game => {}}, valid_session
        assigns(:team_game).should be_a_new(TeamGame)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TeamGame.any_instance.stub(:save).and_return(false)
        post :create, {:team_game => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested team_game" do
        team_game = TeamGame.create! valid_attributes
        # Assuming there are no other team_games in the database, this
        # specifies that the TeamGame created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TeamGame.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => team_game.to_param, :team_game => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested team_game as @team_game" do
        team_game = TeamGame.create! valid_attributes
        put :update, {:id => team_game.to_param, :team_game => valid_attributes}, valid_session
        assigns(:team_game).should eq(team_game)
      end

      it "redirects to the team_game" do
        team_game = TeamGame.create! valid_attributes
        put :update, {:id => team_game.to_param, :team_game => valid_attributes}, valid_session
        response.should redirect_to(team_game)
      end
    end

    describe "with invalid params" do
      it "assigns the team_game as @team_game" do
        team_game = TeamGame.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TeamGame.any_instance.stub(:save).and_return(false)
        put :update, {:id => team_game.to_param, :team_game => {}}, valid_session
        assigns(:team_game).should eq(team_game)
      end

      it "re-renders the 'edit' template" do
        team_game = TeamGame.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TeamGame.any_instance.stub(:save).and_return(false)
        put :update, {:id => team_game.to_param, :team_game => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested team_game" do
      team_game = TeamGame.create! valid_attributes
      expect {
        delete :destroy, {:id => team_game.to_param}, valid_session
      }.to change(TeamGame, :count).by(-1)
    end

    it "redirects to the team_games list" do
      team_game = TeamGame.create! valid_attributes
      delete :destroy, {:id => team_game.to_param}, valid_session
      response.should redirect_to(team_games_url)
    end
  end

end