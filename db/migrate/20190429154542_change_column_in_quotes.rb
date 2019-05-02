class ChangeColumnInQuotes < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :zipcode, :string
  end
end
