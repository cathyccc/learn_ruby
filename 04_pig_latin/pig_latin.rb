def translate(message)

  # words is an array
  words = message.split

  vowels = ["a","e","i","o","y"]

  # iterate through each array and change each word
  words.each do |word|
    # checks if first letter is in vowels
    if vowels.include?(word[0]) || word[0] == "u"
      word << "ay"
    else
      # for words that start with "qu"
      if word[0..1] == "qu"
        root = word.delete! "#{word[0..1]}"
        root << "quay"

      # for words that start with consonant and not "qu"
      else
          x = 0
          suffix = ""

          # loop each character until it hits a vowel
          while vowels.include?(word[x]) == false
            suffix << word[x]
            x += 1
          end
          root = word.delete! "#{word[0..x-1]}"
          root << suffix << "ay"
      end
    end
  end

  words.join(" ")
end
