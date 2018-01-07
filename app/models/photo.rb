class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

end
