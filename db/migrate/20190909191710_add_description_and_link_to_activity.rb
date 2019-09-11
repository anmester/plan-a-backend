class AddDescriptionAndLinkToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :description, :string
    add_column :activities, :link, :string
  end
end
