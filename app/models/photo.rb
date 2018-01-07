class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

end
