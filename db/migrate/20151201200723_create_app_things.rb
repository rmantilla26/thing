class CreateAppThings < ActiveRecord::Migration
  def change
    create_table :app_things do |t|
      t.references :app, index: true, foreign_key: true
      t.references :thing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
