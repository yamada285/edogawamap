class CreateOperationHours < ActiveRecord::Migration[5.2]
  def change
    create_table :operation_hours do |t|

      t.timestamps
    end
  end
end
