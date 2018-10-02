class Comment < ApplicationRecord
  belongs_to :picture
  # you are in a 1-M relationship with picture
  # there is a picture_id foreign key in your db table

  # now we can do this:
  # Comment.first.picture
end
