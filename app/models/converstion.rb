class Converstion < ApplicationRecord

    has_many :convos_as_senders , foreign_key: :sender_id, class_name: 'Conversation', dependent: :destroy
    has_many :recipients , through: :convos_as_senders, source: :recipient
   
    has_many :convos_as_recipients , foreign_key: :recipient_id, class_name: 'Conversation', dependent: :destroy
    has_many :senders , through: :convos_as_recipients, source: :sender
   
end
