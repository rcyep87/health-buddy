class ChangeSleepsColumnTypes < ActiveRecord::Migration
  def change
    change_column(:sleeps, :start_time, :time, null: false)
    change_column(:sleeps, :end_time, :time, null: false)
  end
end
