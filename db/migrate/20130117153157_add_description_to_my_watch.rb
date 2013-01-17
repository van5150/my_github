class AddDescriptionToMyWatch < ActiveRecord::Migration
  def change
    add_column :my_watches, :description, :text
  end
end
