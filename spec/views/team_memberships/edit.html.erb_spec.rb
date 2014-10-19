require 'spec_helper'

describe "team_memberships/edit" do
  before(:each) do
    @team_membership = assign(:team_membership, stub_model(TeamMembership,
      :team_id => 1,
      :person_id => 1,
      :jersey_num => 1
    ))
  end

  it "renders the edit team_membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_memberships_path(@team_membership), :method => "post" do
      assert_select "input#team_membership_team_id", :name => "team_membership[team_id]"
      assert_select "input#team_membership_person_id", :name => "team_membership[person_id]"
      assert_select "input#team_membership_jersey_num", :name => "team_membership[jersey_num]"
    end
  end
end
