class Picture < ActiveRecord::Base
  has_many :comments

  # you are in a 1-M relationship with Comment
  # in the comments db table there is a FK about you: picture_id

  # now we can do this:
  # Picture.last.comments
end
