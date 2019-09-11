class AddLongLatToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :longitude, :integer
    add_column :activities, :latitude, :integer
  end
end
