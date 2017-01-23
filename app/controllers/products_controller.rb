class ProductsController < ApplicationController


	def index
    
		@products = Product.all
    end


	def new
        @product = Product.new
	end 



	def create
        @product = Product.new( products_params )
    end

    
    def edit

    end

    
    def update

    end
    

    	
    def show

	end


	def destroy

	end


	private
	
    def products_params
 		params.require(:products).permit(:price, :name, :description, :image_file) 
    end

end
