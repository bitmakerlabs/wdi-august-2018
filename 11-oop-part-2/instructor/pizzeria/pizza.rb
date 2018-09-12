
class Pizza

  def initialize(new_toppings)
    @baked = false
    @slices = 0
    @toppings = new_toppings
  end

  def bake
    @baked = true
  end

  def cut
    self.bake
    if @baked
      @slices += 2
    end
  end

  def eat
    if @slices >= 1 && @baked
      @slices -= 1
    end
  end

end

# pizza1 = Pizza.new(['cheese', 'pepperoni', 'peppers'])
# pizza2 = Pizza.new(['mushrooms', 'cheese', 'bacon'])
#
# p pizza1
# p pizza2
# puts '---'
#
# pizza2.bake
#
# p pizza1
# p pizza2
# puts '---'

# p pizza1
#
# pizza1.cut
# p pizza1
#
# pizza1.bake
# p pizza1
# # puts pizza1.inspect
#
# pizza1.cut
# p pizza1
#
# 4.times do
#   pizza1.cut
# end
#
# p pizza1
#
# puts '------'
#
# 11.times do
#   pizza1.eat
#   p pizza1
# end








#
