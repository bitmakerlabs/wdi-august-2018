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

  # After learning about associations
  #validates :album, :genre, :media_type, presence: true

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :milliseconds, :bytes, numericality: {
                                                   only_integer: true,
                                                   greater_than: 0
                                                 }
  validates :unit_price, numericality: { greater_than_or_equal_to: 0.0 }

  validate :name_must_be_capitalized

  # t.string "name", null: false
  # t.string "composer"
  # t.integer "milliseconds", null: false
  # t.integer "bytes"
  # t.decimal "unit_price", precision: 10, scale: 2

  # t.integer "album_id"
  # t.integer "genre_id"
  # t.integer "media_type_id"

private

  def name_must_be_capitalized
    # Step 1 - Make sure there *is* a name
    return unless name.present?

    # Step 2 - Check that the first char is upcase
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 3 - If the first char is not upcase, add an error
    if first_char_is_not_upcased
      errors.add(:name, 'must be capitalized!')
    end
  end

  def other_method
    # ...
  end

end
