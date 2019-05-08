class ChatChannel < ApplicationCable::Channel
  def subscribed
    chat = Chat.find(params[:chat_id])
    stream_for chat
    # stream_from "some_channel"
  end

  def unsubscribed
    raise "huh?"
    # Any cleanup needed when channel is unsubscribed
  end
end
