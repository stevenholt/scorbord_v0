class TeamMembershipsController < ApplicationController
  before_action :set_team_membership, only: [:show, :edit, :update, :destroy]

  # GET /team_memberships
  # GET /team_memberships.json
  def index
    if :team_id?
      @team = Team.find( params[:team_id] )
      @team_memberships = TeamMembership.where(" team_id = ? ", @team.id)
    else
      @team_memberships = TeamMembership.all
    end
  end

  def roster
    @team = Team.find( params[:team_id] )
    @team_memberships = TeamMembership.where(" team_id = ? ", @team.id)
    render 'roster'
    # @team_memberships = TeamMembership.all
  end
  # GET /team_memberships/1
  # GET /team_memberships/1.json
  def show

  end

  # GET /team_memberships/new
  def new
    @team_membership = TeamMembership.new
    @team = Team.find( params[:team_id] )
  end

  # GET /team_memberships/1/edit
  def edit
  end

  # POST /team_memberships
  # POST /team_memberships.json
  def create
    @team_membership = TeamMembership.new(team_membership_params)

    respond_to do |format|
      if @team_membership.save
        format.html { redirect_to team_team_memberships_path(@team_membership.team_id), notice: 'Team membership was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_membership }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_memberships/1
  # PATCH/PUT /team_memberships/1.json
  def update
    respond_to do |format|
      if @team_membership.update(team_membership_params)
        format.html { redirect_to @team_membership, notice: 'Team membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_memberships/1
  # DELETE /team_memberships/1.json
  def destroy
    @team = Team.find( @team_membership.team_id )
    @team_membership.destroy
    respond_to do |format|
      format.html { redirect_to team_team_memberships_path(@team), notice: 'Player successfully dismissed' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_membership
      @team_membership = TeamMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_membership_params
      params.require(:team_membership).permit(:team_id, :person_id, :jersey_num)
    end
end
