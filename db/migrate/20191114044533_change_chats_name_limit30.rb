class ChangeChatsNameLimit30 < ActiveRecord::Migration[6.0]
  def up
    change_column :chats, :title, :string, limit:30
  end
  
  def down
    change_column :chats, :title, :string
  end
end
