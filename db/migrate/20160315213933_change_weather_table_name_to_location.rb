class ChangeWeatherTableNameToLocation < ActiveRecord::Migration
  def change
    rename_table :weathers, :locations
  end
end
