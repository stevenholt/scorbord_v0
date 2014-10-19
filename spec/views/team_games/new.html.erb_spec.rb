require 'spec_helper'

describe "team_games/new" do
  before(:each) do
    assign(:team_game, stub_model(TeamGame,
      :team_id => 1,
      :game_id => 1,
      :home_team => false,
      :away_team => false
    ).as_new_record)
  end

  it "renders new team_game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_games_path, :method => "post" do
      assert_select "input#team_game_team_id", :name => "team_game[team_id]"
      assert_select "input#team_game_game_id", :name => "team_game[game_id]"
      assert_select "input#team_game_home_team", :name => "team_game[home_team]"
      assert_select "input#team_game_away_team", :name => "team_game[away_team]"
    end
  end
end
