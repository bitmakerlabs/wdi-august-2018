class Contact

  @@list = []
  @@next_id = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes

    @id = nil
  end

  def self.all
    @@list
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = self.new(first_name, last_name, email, notes)
    new_contact.save
    new_contact
  end

  def self.find(id)
    # Left to the student as an exercise
    # Iterate through the entire list of contacts (@@list)
    # Ask which ones has that id
    # Return that instance
  end

  # Attribute Readers
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # Attribute Writers
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # Instance Methods
  # Note you can access first name or last name through
  # the instance variables directly OR via their readers
  def full_name
    "#{ @first_name } #{ last_name }"
  end

  def save
    @id = @@next_id
    @@next_id += 1
    @@list << self
  end

end
