class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :full_name
      t.string :org_name
      t.string :add_one
      t.string :add_two
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :email
      t.bigint :user_id
      t.string :status
      t.integer :quote_number
      t.string :front
      t.string :back
      t.string :color
      t.text :sizes
      t.text :notes
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
