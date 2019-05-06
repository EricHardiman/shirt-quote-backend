class AddShirtToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :shirt_type, :string
  end
end
