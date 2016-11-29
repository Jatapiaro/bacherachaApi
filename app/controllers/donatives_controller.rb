class DonativesController < ApplicationController
  before_action :set_donative, only: [:edit, :update, :destroy]
  before_action :set_bump


  # GET /donatives/1
  # GET /donatives/1.json
  def show
  end

  # GET /donatives/new
  def new
    @donative = Donative.new
  end

  # GET /donatives/1/edit
  def edit
  end

  # POST /donatives
  # POST /donatives.json
  def create

    @donative = current_user.donatives.new(donative_params)
    @donative.bump=@bump
    ##@donative = Donative.new(donative_params)

    respond_to do |format|
      if @donative.save
        format.html { redirect_to @donative.bump, notice: 'Donative was successfully created.' }
        format.json { render :show, status: :created, location: @donative.bump}
      else
        format.html { render :new }
        format.json { render json: @donative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donatives/1
  # PATCH/PUT /donatives/1.json
  def update
    respond_to do |format|
      if @donative.update(donative_params)
        format.html { redirect_to @donative, notice: 'Donative was successfully updated.' }
        format.json { render :show, status: :ok, location: @donative.bump}
      else
        format.html { render :edit }
        format.json { render json: @donative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donatives/1
  # DELETE /donatives/1.json
  def destroy
    @donative.destroy
    respond_to do |format|
      format.html { redirect_to donatives_url, notice: 'Donative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bump
      @bump=Bump.find(params[:bump_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_donative
      @donative = Donative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donative_params
      params.require(:donative).permit(:user_id, :bump_id, :money, :comment)
    end
end
