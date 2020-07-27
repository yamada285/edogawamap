class CreateMcroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :mcroposts do |t|
      t.text :content
      t.integer :user_id
      t.integer :park_id

      t.timestamps
    end
  end
end
