
# puts "Hello, Jackie!"
puts("Hello, Jackie!")

puts("Hello, Brian!")

puts("Hello, Emma!")

















puts '------'

num = 3 ** 4
puts num

def say_hello(name, city)
  return puts("Hello, #{name} from #{city}!")
end

say_hello("Emma", "Toronto")
say_hello("Jackie", "Toronto")
say_hello("Brian", "Toronto")

name = "Dana"
say_hello(6, "Toronto")
say_hello("Toronto", 6)

words = say_hello('Diana', 'Montreal')
puts words


puts '-----'

def add(num1, num2)
  return num1 + num2
end

puts add(5, 7)

x = add(5, 7)
puts x







def breathe_fire(fire)
  puts fire * 3
end

fire = "~~~~~^^^"
breathe_fire(fire)


fire = 'asdfuasdf'
def breathe_fire
  puts fire * 3
end




def build_house
  house = "My House"
  puts house

  x = 0
  while x < 5
    puts house
    x += 1
    property = 'Big yard'
  end

  puts property
end

build_house
# puts property # <<< doesn't work!
# puts house


temperature = 23
if temperature > 20
  puts "Temperature is #{temperature}!"
  animal = 'Lion'
end

puts animal




def get_number
  x = 7
  # .....
  puts x
  x
end

num = get_number
puts num.inspect


def get_sentence(word)
  if word.length > 5
    return "My word is #{word}."
  end
  puts "You gave us a word!"
end

get_sentence('zab')








def can_join_game(player)
  # do work to join the game
  if player.banned
    return false
  end
  return true
end












#
puts "\n\n"


def make_burger(bun, patty, cheese, toppings)
  burger = ""
  burger += bun + "\n"
  burger += toppings
  if cheese
    burger += "/////\n"
  end
  burger += patty + "\n"
  burger += bun
  puts "Making burger..."
  return burger
end

def get_toppings(bacon, lettuce)
  toppings = ""
  if bacon
    toppings += " ~~~ \n"
  end
  if lettuce
    toppings += "^^^^^\n"
  end
  return toppings
end


my_toppings = get_toppings(true, false)
puts make_burger(' --- ', '=====', true, my_toppings)
my_toppings = get_toppings(false, true)
puts make_burger(' --- ', '=====', false, my_toppings)










#
