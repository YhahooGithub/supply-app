class SqAcsController < ApplicationController
  before_action :set_sq_ac, only: [:edit, :update, :destroy]

  def index
    # integrate with show squadron
    redirect_to Squadron.find(params[:squadron_id])
  end

  def show
    # integrate with show squadron
    redirect_to Squadron.find(params[:squadron_id])
  end

  def new
    @squadron = Squadron.find(params[:squadron_id])
    @sq_ac = @squadron.sq_acs.build
  end

  def edit
  end

  def create
    @squadron = Squadron.find(params[:squadron_id])
    @sq_ac = @squadron.sq_acs.build(sq_ac_params)
    if @sq_ac.save
      redirect_to @squadron, notice: 'Squadron Aircraft was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @sq_ac.update_attributes(sq_ac_params)
      redirect_to @squadron, notice: 'Squadron Aircraft was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @sq_ac.destroy
    redirect_to @squadron, notice: 'Squadron Aircraft was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sq_ac
      @squadron = Squadron.find(params[:squadron_id])
      @sq_ac = @squadron.sq_acs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sq_ac_params
      params.require(:sq_ac).permit(:aircraft_id, :quantity)
    end
end
