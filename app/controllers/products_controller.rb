class ProductsController < ApplicationController

    def index
        @products = Products.all
    end


	def new
        @product = Products.new
    end 


    def create
        @product = Products.new(product_params)
        if @product.save
            flash[:notice]="Product was successfully created."
            redirect_to
        else
            render :new
        end
    end



    def edit
        @product = Products.find(params[:id])
    end


    def update
        @product = Product.current_product
        if @product.update_attributes(product_params)
            redirect_to(product_path(@product))
        else
            render 'show'
        end
    end

    
    def update
        @product = Products.current_product
        if @product.update_arrributes(product_params)
            redirect_to(product_path(@product))
        else
            rader 'show'
        end
    end


    	
    def show
        @product = Products.find(params[:id])
    end


    
    def destroy
          @product = Products.find(params[:id])
          @product.destroy
            respond_to do |format|
            format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
            format.json { head :no_content }
        end
    end




    private

	def product_params
 		params.require(:product).permit(:price, :name, :description, :image) 
    end
end
