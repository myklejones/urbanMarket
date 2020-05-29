class User < ApplicationRecord

    has_many :sent_conversation , foreign_key: :sender_id, class_name: 'Conversation', dependent: :destroy
    has_many :recipients , through: :sent_conversation, source: :recipient
   
    has_many :convo_as_recipients , foreign_key: :recipient_id, class_name: 'Conversation', dependent: :destroy
    has_many :senders , through: :convos_as_recipients, source: :sender
end
