class AddColorFrontBackToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :front, :string
    add_column :quotes, :back, :string
    add_column :quotes, :color, :string
  end
end
