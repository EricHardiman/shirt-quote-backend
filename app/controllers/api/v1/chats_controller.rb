class Api::V1::ChatsController < ApplicationController
skip_before_action :authorized, only: [:index]

    def index
        chats = Chat.all
        render json:chats
    end

    def show
        chat = Chat.find(params[:id])
        ChatChannel.broadcast_to(chat)
    end

    def create
        chat = Chat.create()
        render json:chat
    end
end
