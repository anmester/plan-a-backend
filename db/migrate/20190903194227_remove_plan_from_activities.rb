class RemovePlanFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :plan_id
  end
end
