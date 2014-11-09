class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]
  before_action :load_requisition

  
  def load_requisition
    @requisition = Requisition.find(params[:requisition_id]) if params[:requisition_id].present?
  end
  
  # GET /purchases
  # GET /purchases.json
  def index
#    @purchases = Purchase.all
    @purchases = @requisition.present? ? @requisition.purchases : Purchase.all
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
  #pychange add 1 line
  #  redirect_to requisition_path(params[:requisition_id])
  end

  # GET /purchases/new
  def new
  #pychange comment 1 line add 2 lines
  #  @purchase = Purchase.new
    @requisition = Requisition.find(params[:requisition_id])
    @purchase = @requisition.build_purchase
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases
  # POST /purchases.json
  def create
#py comment 10 lines
#    @purchase = Purchase.new(purchase_params)

#    respond_to do |format|
#      if @purchase.save
#        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
#        format.json { render action: 'show', status: :created, location: @purchase }
#      else
#        format.html { render action: 'new' }
#        format.json { render json: @purchase.errors, status: :unprocessable_entity }
#      end
#    end

#py add 7 lines
    @requisition = Requisition.find(params[:requisition_id])
    @purchase = @requisition.build_purchase(purchase_params)
    if @purchase.save
      redirect_to @requisition, notice: 'Purchase was successfully created.'
    else
      render action: "new"
    end
    
  end

  # PATCH/PUT /purchases/1
  # PATCH/PUT /purchases/1.json
  def update
#py comment 9 lines below
#    respond_to do |format|
#      if @purchase.update(purchase_params)
#        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: 'edit' }
#        format.json { render json: @purchase.errors, status: :unprocessable_entity }
#      end
#    end

#py add 5 lines below    
    if @purchase.update_attributes(purchase_params)
      redirect_to @purchase, notice: 'Purchase was successfully updated.'
    else
      render action: "edit"
    end
    
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
#py comment 5 lines belows
#    @purchase.destroy
#    respond_to do |format|
#      format.html { redirect_to purchases_url }
#      format.json { head :no_content }
#    end

#py add 2 lines below    
    @purchase.destroy
    redirect_to @purchase, notice: 'Purchase was successfully deleted.'
    
  end

  private
    #py comment
    # Use callbacks to share common setup or constraints between actions.
#    def set_purchase
#      @purchase = Purchase.find(params[:id])
#    end

    # Never trust parameters from the scary internet, only allow the white list through.
#    def purchase_params
#      params.require(:purchase).permit#(:name, :description, :delivered_at, :supplier_id, :ptype_id, :requisition_id, :reference_number )
#    end
    
    #py add
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      unless params[:requisition_id].blank?
      @requisition = Requisition.find(params[:requisition_id])
      @purchase = @requisition.purchase
      else
      @purchase = Purchase.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_params
      params.require(:purchase).permit(:name, :description, :delivered_at, :supplier_id, :ptype_id, :requisition_id, :reference_number, :purchase_date, :purchase_title )
    end
    
end
