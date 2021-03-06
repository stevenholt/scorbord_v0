class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  # GET /plays
  # GET /plays.json
  def index
    @plays = Play.all
  end

  # GET /plays/1
  # GET /plays/1.json
  def show
  end

  # GET /plays/new
  def new
    @play = Play.new
    @drive = Drive.find( params[:drive_id] )
  end

  # GET /plays/1/edit
  def edit
    @drive = Drive.find( params[:drive_id] )
  end

  # POST /plays
  # POST /plays.json
  def create
    @play = Play.new(play_params)

    respond_to do |format|
      if @play.save
        format.html { redirect_to game_drive_path(@play.drive.game_id, @play.drive_id), notice: 'Play was successfully created.' }
        format.json { render action: 'show', status: :created, location: @play }
      else
        format.html { render action: 'new' }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    respond_to do |format|
      if @play.update(play_params)
        format.html { redirect_to game_drive_path(@play.drive.game_id, @play.drive_id), notice: 'Play was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play.destroy
    respond_to do |format|
      format.html { redirect_to game_drive_path(@play.drive.game_id, @play.drive_id), notice: 'Play was successfully destroyed' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_params
      params.require(:play).permit(:drive_id, :number, :down, :distance, :hashmark, :los, :formation, :playcall, :rusher, :passer, :receiver, :result, :deltayards, :comments, :play_type, :direction, :complete, :penalty, :penalty_call, :penalty_against, :offender, :penalty_yards, :first_down, :fumble_lost, :interception, :touchdown, :sack, :failed_conversion, :fg_good, :kick_distance)
    end
end
