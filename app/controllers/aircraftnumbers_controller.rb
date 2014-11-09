class AircraftnumbersController < ApplicationController
  before_action :set_aircraftnumber, only: [:show, :edit, :update, :destroy]

  # GET /aircraftnumbers
  # GET /aircraftnumbers.json
  def index
    @aircraftnumbers = Aircraftnumber.all
  end

  # GET /aircraftnumbers/1
  # GET /aircraftnumbers/1.json
  def show
  end

  # GET /aircraftnumbers/new
  def new
    @aircraftnumber = Aircraftnumber.new
  end

  # GET /aircraftnumbers/1/edit
  def edit
  end

  # POST /aircraftnumbers
  # POST /aircraftnumbers.json
  def create
    @aircraftnumber = Aircraftnumber.new(aircraftnumber_params)

    respond_to do |format|
      if @aircraftnumber.save
        format.html { redirect_to @aircraftnumber, notice: 'Aircraftnumber was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aircraftnumber }
      else
        format.html { render action: 'new' }
        format.json { render json: @aircraftnumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aircraftnumbers/1
  # PATCH/PUT /aircraftnumbers/1.json
  def update
    respond_to do |format|
      if @aircraftnumber.update(aircraftnumber_params)
        format.html { redirect_to @aircraftnumber, notice: 'Aircraftnumber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aircraftnumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aircraftnumbers/1
  # DELETE /aircraftnumbers/1.json
  def destroy
    @aircraftnumber.destroy
    respond_to do |format|
      format.html { redirect_to aircraftnumbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aircraftnumber
      @aircraftnumber = Aircraftnumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aircraftnumber_params
      params.require(:aircraftnumber).permit(:rtafnumber, :acnumber, :sqnumber, :aircraft_id, :squadron_id)
    end
end
