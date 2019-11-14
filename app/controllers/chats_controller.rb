class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save!
    redirect_to chats_url, notice: "チャット「#{@chat.title}を投稿しました」"
  end
  
  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])
    @chat.update!(chat_params)
    redirect_to chats_url, notice: "チャット「#{@chat.title}を更新しました」"
  end
  
  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to chats_url, notice: "チャット「#{@chat.title}を削除しました」"
  end




  private

    def chat_params
      params.require(:chat).permit(:title, :content)
    end
end
