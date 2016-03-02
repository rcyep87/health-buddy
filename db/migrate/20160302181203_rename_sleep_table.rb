class RenameSleepTable < ActiveRecord::Migration
  def change
    rename_table :sleeps_tables, :sleeps
  end
end
