class CreateStepsTable < ActiveRecord::Migration
  def change
    create_table(:steps) do |t|
      t.integer   , :count
      t.date      , :date, default: DateTime.now.to_date
      t.belongs_to, :user, index: true, foreign_key: true
    end
  end
end
