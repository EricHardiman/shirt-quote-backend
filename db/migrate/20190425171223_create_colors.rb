class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :front
      t.string :back
      t.references :style, foreign_key: true

      t.timestamps
    end
  end
end
