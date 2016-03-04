class AddCreatedAtUpdatedAtAttributesToSteps < ActiveRecord::Migration
  def change
    add_column(:steps, :created_at, :datetime)
    add_column(:steps, :updated_at, :datetime)
  end
end
