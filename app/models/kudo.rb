class Kudo < ActiveRecord::Base
  belongs_to :author, inverse_of: :given_kudos, foreign_key: :author_id, class_name: User
  belongs_to :recipient, inverse_of: :received_kudos, foreign_key: :recipient_id, class_name: User
end
