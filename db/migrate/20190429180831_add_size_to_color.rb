class AddSizeToColor < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :size, :string
  end
end
