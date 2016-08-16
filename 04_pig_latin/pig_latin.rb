def translate(message)

  # words is an arraym
  words = message.split

  words.each do |word|
    # differentiate if word starts with vowels
    if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
      puts "starts with vowel"
    else
      puts "starts with consonant"
    end
  end

end

#testing
translate("apples")
translate("bananas")
translate("eggs")
translate("icecream")
translate("oranges")
translate("umbrella rain")
