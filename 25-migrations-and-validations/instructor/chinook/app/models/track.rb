class Track < ApplicationRecord

  SHORT = 180000
  LONG = 360000

  scope :short, -> { shorter_than(SHORT) }
  scope :long,  -> { longer_than_or_equal_to(LONG) }
  scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }

  scope :starts_with, -> (char) { where("name ILIKE ?", "#{ char }%") }

  # def self.shorter_than(length)
  #   if length && length > 0
  #     where('milliseconds < ?', length)
  #   else
  #     all
  #   end
  # end
  # --- SAME AS ---
  scope :shorter_than, -> (length) {
    where('milliseconds < ?', length) if (length && length > 0)
  }

  # def self.longer_than_or_equal_to(length)
  #   if length && length > 0
  #     where('milliseconds >= ?', length)
  #   else
  #     all
  #   end
  # end
  # --- SAME AS ---
  scope :longer_than_or_equal_to, -> (length) {
    where('milliseconds >= ?', length) if (length && length > 0)
  }

end
