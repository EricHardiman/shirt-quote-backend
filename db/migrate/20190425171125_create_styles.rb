class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.string :name
      t.string :front
      t.string :back
      t.string :size
      t.references :manufacture, foreign_key: true

      t.timestamps
    end
  end
end
