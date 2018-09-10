class Person

  # Special method -- hooks into .new
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @awake = true
  end

  # Instance Methods

  # Attribute Readers
  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  # Attribute Writers
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def full_name
    return "#{ @first_name } #{ last_name }"
  end

  def greetings
    if @awake
      return "Hello, my name is #{ full_name }"
    else
      return 'Zzzzz'
    end
  end

  def slumber
    @awake = false
  end

  def awaken
    @awake = true
  end

end
