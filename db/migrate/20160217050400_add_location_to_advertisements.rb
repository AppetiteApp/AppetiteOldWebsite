class AddLocationToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :location, :string
  end
end
