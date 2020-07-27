class AddParkIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :park_id, :integer
  end
end
