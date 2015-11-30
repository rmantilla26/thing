class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :thing
      t.integer :related_to_thing_id

      t.timestamps null: false
    end
  end
end
