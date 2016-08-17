def translate(message)

  # words is an arraym
  words = message.split

  vowels = ["a","e","i","o","u","y"]
  prefix =
  root =
  suffix =

  words.each do |word|
    # checks if first letter is in vowels
    if vowels.include?(word[0])
      puts word << "ay"
    else
      # for words that start with qu
      if word[0..1] == "qu"
        root = word.delete "#{word[0..1]}"
        puts root << "quay"
      else
        puts "CONSONANT!"
      end
    end
  end
end

#testing
translate("apple")
# translate("banana")
# translate("cherry")
# translate("eat pie")
# translate("three")
# translate("school")
translate("quiet")
# translate("square")
translate("the quick brown fox")
