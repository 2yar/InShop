class ProductsController < ApplicationController

	def products_params
 		params.require(:products).permit(:image_file, :title, :text,)
    end

end
