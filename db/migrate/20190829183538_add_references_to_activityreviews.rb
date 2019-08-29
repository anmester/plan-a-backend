class AddReferencesToActivityreviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :activity_reviews, :activity, null: false, foreign_key: true
  end
end
