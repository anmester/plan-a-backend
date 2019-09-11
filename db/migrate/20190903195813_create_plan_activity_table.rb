class CreatePlanActivityTable < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_activities do |t|
      t.belongs_to :plan, foreign_key: true
      t.belongs_to :activity, foreign_key: true
    end
  end
end
