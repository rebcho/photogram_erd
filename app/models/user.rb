class User < ApplicationRecord
  # Direct associations

  has_many   :friend_requests,
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
