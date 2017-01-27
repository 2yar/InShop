class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end 

  def create
    @products = Product.create( product_params )
    respond_to do |format|
      if @products.save
        format.html { redirect_to @products, notice: 'product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @products = Product.find(params[:id])
  end

  def update
    @products = Product.find(params[:id])
    if @products.update(product_params)
    redirect_to @products
    else
      render 'edit'
    end
  end
 
  def show
    @products = Product.find(params[:id])
  end

  def destroy
      @products = Product.find(params[:id])
      if @products.present?
        @products.destroy
      end
      redirect_to root_url
  end
    
  private
  def product_params
        params.require(:product).permit(:price, :name, :description, :image)
  end
end