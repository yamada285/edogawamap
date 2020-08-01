class AddParkImageToMaps < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :park_image, :string
  end
end
