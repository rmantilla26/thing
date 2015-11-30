class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name_en
      t.string :name_es

      t.timestamps null: false
    end
  end
end
