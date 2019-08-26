class CreateActivityReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_reviews do |t|
      t.integer :rating
      t.string :text

      t.timestamps
    end
  end
end
