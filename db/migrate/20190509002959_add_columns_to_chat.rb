class AddColumnsToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :admin_id, :integer
    add_column :chats, :user_id, :integer
  end
end
