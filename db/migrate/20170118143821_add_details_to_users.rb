class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name,  :string
    add_column :users, :last_name,   :string
    add_column :users, :phone,       :integer
    add_column :users, :is_admin,    :boolean, default: true
    add_column :users, :notes,       :string
    add_column :users, :is_active,   :boolean, default: true
  end
end
