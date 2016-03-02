class CreateSleepsTable < ActiveRecord::Migration
  def change
    create_table :sleeps_tables do |t|
      t.datetime   :start_time, null: false
      t.datetime   :end_time,   null: false
      t.date       :date,       null: false
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
