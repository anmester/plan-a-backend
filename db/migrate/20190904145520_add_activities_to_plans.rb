class AddActivitiesToPlans < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :plan, null: false, foreign_key: true
  end
end
