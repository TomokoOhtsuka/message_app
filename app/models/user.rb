class User < ApplicationRecord
  has_secure_password
  has_many :sent_messages, inverse_of: :sender, class_name: :Message
  has_many :received_messages, inverse_of: :receiver, class_name: :Message
end