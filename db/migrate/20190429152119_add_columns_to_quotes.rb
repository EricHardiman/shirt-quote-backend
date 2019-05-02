class AddColumnsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :status, :string
    add_column :quotes, :quote_number, :integer
  end
end
