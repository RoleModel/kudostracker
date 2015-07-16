class User < ActiveRecord::Base
  has_many :received_kudos, inverse_of: :author, foreign_key: :recipient_id, class_name: Kudo
  has_many :given_kudos, inverse_of: :recipient, foreign_key: :author_id, class_name: Kudo
end
