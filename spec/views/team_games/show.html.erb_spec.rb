require 'spec_helper'

describe "team_games/show" do
  before(:each) do
    @team_game = assign(:team_game, stub_model(TeamGame,
      :team_id => 1,
      :game_id => 2,
      :home_team => false,
      :away_team => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
