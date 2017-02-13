class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end 

  def create
    @product = Product.create(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'product was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end
 
  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_url
  end
    
  private
  
  def product_params
    params.require(:product).permit(:price, :name, :description, :image)
  end
end
