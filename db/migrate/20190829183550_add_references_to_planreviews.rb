class AddReferencesToPlanreviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :plan_reviews, :plan, null: false, foreign_key: true
  end
end
