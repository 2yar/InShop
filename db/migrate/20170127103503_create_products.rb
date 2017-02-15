class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.float :price, default: 0
      t.float :weight, default: 0
      t.string :name
      t.string :description
      t.string :image_file
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
