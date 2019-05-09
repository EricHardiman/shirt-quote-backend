class Api::V1::ChatsController < ApplicationController
skip_before_action :authorized, only: [:index]

    def index
        chats = Chat.all.last
        render json:chats
    end

    def show
        chat = Chat.find(params[:id])
        ChatChannel.broadcast_to(chat)
    end

    def find_chat
        chat = Chat.find(params[:id])
        render json:chat
    end

    def update
        chat = Chat.find(params[:id])
        chat.update(user_id: params[:user_id])
        render json:chat
      end

    def create
        if User.find(params[:admin_id]).is_admin 
            puts "Admin is here"
            chat = Chat.create(admin_id: params[:admin_id])
            render json:chat
        end
    end
end
