class ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  
  def search 
    @products = Product.find_all_by_name(params[:name])
  end 
  
  def new
    # create a dummy Product
    @product = Product.new
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:name, :pn, :nsn, :cost, :stock, :modell, :pro_type))   
    if @product.save
      flash[:notice] = "Product has been successfully created."
      redirect_to @product
    else 
      render :action => "new"
    end
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted."
    redirect_to products_path
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params.require(:product).permit(:name, :pn, :nsn, :cost, :stock, :modell, :pro_type))
      redirect_to @product, notice: 'Product was successfully updated.' 
    else
      render action: "edit" 
    end
  end

end
