class AddMapIdToOperationHours < ActiveRecord::Migration[5.2]
  def change
    add_column :operation_hours, :map_id, :integer
    add_column :operation_hours, :day, :integer
    add_column :operation_hours, :open_time, :time
    add_column :operation_hours, :closing_time, :time
    add_column :operation_hours, :closed, :boolean

  end
end



