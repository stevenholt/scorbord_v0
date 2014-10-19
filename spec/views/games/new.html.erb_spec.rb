require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :home_team => 1,
      :away_team => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_home_team", :name => "game[home_team]"
      assert_select "input#game_away_team", :name => "game[away_team]"
    end
  end
end
