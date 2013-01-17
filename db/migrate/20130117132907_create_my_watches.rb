class CreateMyWatches < ActiveRecord::Migration
  def change
    create_table :my_watches do |t|
      t.integer :created_by

      t.timestamps
    end
  end
end
