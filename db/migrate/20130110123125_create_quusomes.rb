class CreateQuusomes < ActiveRecord::Migration
  def change
    create_table :quusomes do |t|
      t.string :title

      t.timestamps
    end
  end
end
