def translate(message)

  # words is an arraym
  words = message.split

  vowels = ["a","e","i","o","u","y"]

  words.each do |word|
    # checks if first letter is in vowels
    if vowels.include?(word[0])
      word << "ay"
      puts "VOWEL!"
    else
      if word[0..1] == "qu"
        puts "SPECIAL"
      else
        puts "CONSONANT!"
      end
    end
  end
end

#testing
translate("apple")
translate("banana")
translate("cherry")
translate("eat pie")
translate("three")
translate("school")
translate("queen")
