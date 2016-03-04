class AddNullfalseToSteps < ActiveRecord::Migration
  def change
    change_column_null(:steps, :created_at, true)
    change_column_null(:steps, :updated_at, true)
  end
end
