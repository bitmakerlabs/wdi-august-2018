class Tag < ApplicationRecord
  has_and_belongs_to_many :pictures

  # there is a pictures_tags join table
  # that represents your M-M relationship with picture

  has_many :comments, through: :pictures
end
