class AddColumnsToStyle < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :gender, :string
    add_column :styles, :category, :string
    add_column :styles, :age_group, :string
  end
end
