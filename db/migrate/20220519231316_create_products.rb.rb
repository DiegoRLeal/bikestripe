class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :localization
      t.float :price
      t.string :bike_condition
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
