class MakeDateTimeTypesForStepsNullFalse < ActiveRecord::Migration
  def change
    change_column(:steps, :created_at, :datetime, :null => false)
    change_column(:steps, :updated_at, :datetime, :null => false)
  end
end
