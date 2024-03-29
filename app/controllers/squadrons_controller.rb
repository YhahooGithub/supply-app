class SquadronsController < ApplicationController
  before_action :set_squadron, only: [:show, :edit, :update, :destroy]

  # GET /squadrons
  # GET /squadrons.json
  def index
    @squadrons = Squadron.all
  end

  # GET /squadrons/1
  # GET /squadrons/1.json
  def show
  end

  # GET /squadrons/new
  def new
    @squadron = Squadron.new
  end

  # GET /squadrons/1/edit
  def edit
  end

  # POST /squadrons
  # POST /squadrons.json
  def create
    @squadron = Squadron.new(squadron_params)

    respond_to do |format|
      if @squadron.save
        format.html { redirect_to @squadron, notice: 'Squadron was successfully created.' }
        format.json { render action: 'show', status: :created, location: @squadron }
      else
        format.html { render action: 'new' }
        format.json { render json: @squadron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squadrons/1
  # PATCH/PUT /squadrons/1.json
  def update
    respond_to do |format|
      if @squadron.update(squadron_params)
        format.html { redirect_to @squadron, notice: 'Squadron was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @squadron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squadrons/1
  # DELETE /squadrons/1.json
  def destroy
    @squadron.destroy
    respond_to do |format|
      format.html { redirect_to squadrons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squadron
      @squadron = Squadron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squadron_params
      params.require(:squadron).permit(:sq, :contact_name, :contact_number, :wing_id)
    end
end
