class Chat < ApplicationRecord
    has_many :messages

    has_one :permanent, class_name: 'User', foreign_key: 'admin_id'
    has_one :permanent, class_name: 'User', foreign_key: 'user_Id'
end
