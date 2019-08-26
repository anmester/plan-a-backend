class CreatePlanReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_reviews do |t|
      t.integer :rating
      t.string :text

      t.timestamps
    end
  end
end
