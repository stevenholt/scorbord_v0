require 'spec_helper'

describe "team_memberships/index" do
  before(:each) do
    assign(:team_memberships, [
      stub_model(TeamMembership,
        :team_id => 1,
        :person_id => 2,
        :jersey_num => 3
      ),
      stub_model(TeamMembership,
        :team_id => 1,
        :person_id => 2,
        :jersey_num => 3
      )
    ])
  end

  it "renders a list of team_memberships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
