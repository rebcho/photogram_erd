class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :photo

  # Indirect associations

  # Validations

  validates :text, :presence => true

end
