class CreateDopers < ActiveRecord::Migration
  def change
    create_table :dopers do |t|
      t.string :name
      t.integer :level_id

      t.timestamps null: false
    end
  end
end
