class AddMultiToColors < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :multi, :boolean
    add_column :colors, :name2, :string
  end
end
