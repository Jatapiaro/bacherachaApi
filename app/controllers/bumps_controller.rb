class BumpsController < ApplicationController
  before_action :set_bump, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /bumps
  # GET /bumps.json
  def index
    user_id = current_user.id
    @bumps = Bump.all
  end

  # GET /bumps/1
  # GET /bumps/1.json
  def show
  end

  # GET /bumps/new
  def new
    @bump = Bump.new
  end

  # GET /bumps/1/edit
  def edit
  end

  # POST /bumps
  # POST /bumps.json
  def create

    @bump = current_user.bumps.new(bump_params)
    ##@bump = Bump.new(bump_params)

    respond_to do |format|
      if @bump.save
        format.html { redirect_to @bump, notice: 'Bump was successfully created.' }
        format.json { render :show, status: :created, location: @bump }
      else
        format.html { render :new }
        format.json { render json: @bump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bumps/1
  # PATCH/PUT /bumps/1.json
  def update
    respond_to do |format|
      if @bump.update(bump_params)
        format.html { redirect_to @bump, notice: 'Bump was successfully updated.' }
        format.json { render :show, status: :ok, location: @bump }
      else
        format.html { render :edit }
        format.json { render json: @bump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bumps/1
  # DELETE /bumps/1.json
  def destroy
    @bump.destroy
    respond_to do |format|
      format.html { redirect_to bumps_url, notice: 'Bump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bump
      @bump = Bump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bump_params
      params.require(:bump).permit(:latitude, :longitude, :lengthSteps, :widthSteps, :depth, :videoUrl)
    end
end
