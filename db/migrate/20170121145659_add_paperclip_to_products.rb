class AddPaperclipToProducts < ActiveRecord::Migration[5.0]
	def change
  		add_attachment :image
  	end
end
