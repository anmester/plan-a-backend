class ChangeLongLatActivities < ActiveRecord::Migration[6.0]
  def change
    change_column :activities, :longitude, :decimal
    change_column :activities, :latitude, :decimal
  end
end
