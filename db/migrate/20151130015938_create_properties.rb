class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.references :thing, index: true, foreign_key: true
      t.belongs_to :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
