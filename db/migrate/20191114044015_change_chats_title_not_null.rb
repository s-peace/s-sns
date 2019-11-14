class ChangeChatsTitleNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :chats, :title, false
  end
end
