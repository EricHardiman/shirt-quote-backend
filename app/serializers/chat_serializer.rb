class ChatSerializer < ActiveModel::Serializer
  attributes :id, :admin_id, :user_id
end
