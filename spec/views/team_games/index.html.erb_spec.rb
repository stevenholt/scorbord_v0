require 'spec_helper'

describe "team_games/index" do
  before(:each) do
    assign(:team_games, [
      stub_model(TeamGame,
        :team_id => 1,
        :game_id => 2,
        :home_team => false,
        :away_team => false
      ),
      stub_model(TeamGame,
        :team_id => 1,
        :game_id => 2,
        :home_team => false,
        :away_team => false
      )
    ])
  end

  it "renders a list of team_games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
