class ReceiptsController < ApplicationController

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(params[:receipt].permit(:receipt_doc, :receipt_date, :receipt_title, :purchase_id))
    if @receipt.save
      redirect_to @receipt
    else
      render 'new'
    end
  end
  
  def show
    @receipt = Receipt.find(params[:id])
  end 
  
  def index
    @receipts = Receipt.all
  end
  
  def edit
    @receipt = Receipt.find(params[:id])
  end

  def update
    @receipt = Receipt.find(params[:id])
    if @receipt.update(params[:receipt].permit(:receipt_doc, :receipt_date, :receipt_title, :purchase_id))
      redirect_to @receipt
    else
      render 'edit'
    end
  end
  
  def destroy 
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    redirect_to receipts_path
  end

  private
    def receipt_params
      params.require(:receipt).permit(:receipt_doc, :receipt_date, :receipt_title, :purchase_id)
    end
  
end
