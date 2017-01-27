class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_name,  :string,  limit: 	25
  	add_column :users, :last_name,   :string,  limit: 	50
  	add_column :users, :phone,       :integer, limit: 	15
  	add_column :users, :is_admin,    :boolean, default: true
  	add_column :users, :notes,			 :string,	 limit: 	250
  	add_column :users, :is_active,	 :boolean, default: true
  end
end
