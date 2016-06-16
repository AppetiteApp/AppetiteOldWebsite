class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :dish
      t.string :phone
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
