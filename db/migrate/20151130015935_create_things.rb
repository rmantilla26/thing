class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
      t.references :app
    end
  end
end
