class Api::V1::MessagesController < ApplicationController
    def create
        message = Message.new(message_params)
        chat = Chat.find(params[:message][:chat_id])
        ChatChannel.broadcast_to(chat, message)    
    end

    private

    def message_params
        params.require(:message).permit(:content, :user_id, :chat_id, :username)
    end
end
