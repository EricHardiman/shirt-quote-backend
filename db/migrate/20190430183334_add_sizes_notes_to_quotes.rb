class AddSizesNotesToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :sizes, :text
    add_column :quotes, :notes, :text
  end
end
