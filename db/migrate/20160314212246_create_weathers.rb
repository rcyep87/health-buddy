class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :address1
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :lat
      t.float :long
      t.belongs_to  :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
