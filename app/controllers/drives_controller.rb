class DrivesController < ApplicationController
  before_action :set_drive, only: [:show, :edit, :update, :destroy]

  # GET /drives
  # GET /drives.json
  def index
    @drives = Drive.all
  end

  # GET /drives/1
  # GET /drives/1.json
  def show
    # redirect_to game_drives_path( params[:drive_id] )
    # @game = Game.find( params[:game_id] )
  end

  # GET /drives/new
  def new
    @drive = Drive.new
    @game = Game.find( params[:game_id] )
  end

  # GET /drives/1/edit
  def edit
  end

  # POST /drives
  # POST /drives.json
  def create
    @drive = Drive.new(drive_params)

    respond_to do |format|
      if @drive.save
        format.html { redirect_to game_drive_path(@drive.game_id, @drive), notice: 'Drive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drive }
      else
        format.html { render action: 'new' }
        format.json { render json: @drive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drives/1
  # PATCH/PUT /drives/1.json
  def update
    respond_to do |format|
      if @drive.update(drive_params)
        format.html { redirect_to @drive, notice: 'Drive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drives/1
  # DELETE /drives/1.json
  def destroy
    @drive.destroy
    respond_to do |format|
      format.html { redirect_to drives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drive
      @drive = Drive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drive_params
      params.require(:drive).permit(:game_id, :team_id, :start_time, :end_time)
    end
end
