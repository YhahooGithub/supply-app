class RequisitionsController < ApplicationController
  before_action :set_requisition, only: [:show, :edit, :update, :destroy]

  
  # GET /requisitions
  # GET /requisitions.json
  def index
    @requisitions = Requisition.all
  end

  # GET /requisitions/1
  # GET /requisitions/1.json
  def show
  end

  # GET /requisitions/new
  def new
    @requisition = Requisition.new
    @debts = Debt.all
  end

  # GET /requisitions/1/edit
  def edit
    @debts = Debt.all
  end

  # POST /requisitions
  # POST /requisitions.json
  def create
    @requisition = Requisition.new(requisition_params)

    respond_to do |format|
      if @requisition.save
        format.html { redirect_to @requisition, notice: 'Requisition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @requisition }
      else
        format.html { render action: 'new' }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisitions/1
  # PATCH/PUT /requisitions/1.json
  def update
    respond_to do |format|
      if @requisition.update(requisition_params)
        format.html { redirect_to @requisition, notice: 'Requisition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisitions/1
  # DELETE /requisitions/1.json
  def destroy
    @requisition.destroy
    respond_to do |format|
      format.html { redirect_to requisitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.includes(line_items: :product).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisition_params
      params.require(:requisition).permit(:name, :delivery_request, :reference_number, :issue_date, :debt_ids => [])
    end
end
