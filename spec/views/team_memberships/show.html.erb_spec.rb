require 'spec_helper'

describe "team_memberships/show" do
  before(:each) do
    @team_membership = assign(:team_membership, stub_model(TeamMembership,
      :team_id => 1,
      :person_id => 2,
      :jersey_num => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
