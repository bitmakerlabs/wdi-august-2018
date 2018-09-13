require_relative 'contact.rb'

clark = Contact.new('Clark', 'Kent', 'clark@dailyplanet.com', 'Goes into the phone booth a lot')
bruce = Contact.new('Bruce', 'Wayne', 'bruce@wayneenterprises.com', "Doesn't smile very much")
diana = Contact.new('Diana', 'Prince', 'diana@amazon.com')

dave1 = Contact.create('Dave', 'Wong', 'dave@gmail.com')
dave2 = Contact.create('Dave', 'Wong', 'dave@hotmail.com')
dave3 = Contact.create('Dave', 'Wong', 'dave@yahoo.com', 'Copycat')

Contact.all.each do |contact|
  puts "[ #{ contact.first_name } #{ contact.last_name } #{ contact.email } #{ contact.notes } ]"
end


puts Contact.all.size

some_dave = Contact.find(1002)
puts some_dave.inspect
