class AddStartColorToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :starting_color, :string
  end
end
