class FixNullFalseToSteps < ActiveRecord::Migration
  def change
    change_column(:steps, :created_at, :datetime, :null => true)
    change_column(:steps, :updated_at, :datetime, :null => true)
    change_column(:steps, :user_id   , :integer , :null => false)
  end
end
