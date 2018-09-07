# Problem: Pig Latin
# Pig Latin
 # "apple" => "appleay"
 # "plum" => "umplay"
 # grape => apegray
 # Natalie => atalieNay
 # "squeeze" => "eezesquay"

# - define what is a vowel
# - check if string starts with vowel
#   - just add "ay" to end
# - if it doesn't
#   - locate closest vowel, put the preceding letters to the end
#   - then add "ay" to end

# vowels = ['a','e','i','o','u','A','E','I','U','O']
#
# boolean method does_it_start_with_vowel(word)
#   return word.extract_first.included_in? vowels
# end
vowels = ['a','e','i','o','u','A','E','I','U','O']

def does_it_start_with_vowel(word, vowel_list)
  return vowel_list.include?(word[0])
end
#
#
# if does_it_start_with_vowel(word)
word = "plum"
if does_it_start_with_vowel(word, vowels)
#    word = word.concat("ay")
     word = word + "ay"
else
  #  else
  #    for each char, position in word
  counter = 0
  word.chars.each do |character|

    if vowels.include?(character)
      break
    end

    counter = counter + 1
  end

#      if char in vowels
#        first_vowel = char
      #  first_vowel_position = position
#        break the loop
#      end
#    end
#
#    [first_part, second_part] = word.split_at(first_vowel_position)
first_part = word[0..counter-1]
second_part = word[counter..-1]
#    word = second_part + first_part + "ay"
word = second_part + first_part + "ay"
end
# end
#
# puts word
puts word
#




