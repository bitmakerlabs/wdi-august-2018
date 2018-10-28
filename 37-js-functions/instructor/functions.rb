# Basics

# Write a method that takes someone's order

# Call the method
name_of_method = def do_stuff
  items = [4, 6, 8]

  items.each do |item|
    puts item
  end
end

puts(do_stuff().inspect)
puts name_of_method.inspect

send(name_of_method)

# Question:
# Can I assign it to a variable as a method? Why would I want to do this?
