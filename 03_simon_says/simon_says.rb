def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, num = 2)
  new_string = "#{message} " * num
  new_string.rstrip
end

def start_of_word(word,num_letters)
  word[0..num_letters-1]
end

def first_word(message)
  message_each_word = message.split
  return message_each_word[0]
end

def titleize(message)
  words_array = message.split

  words_array.each do |word|
    if word == "of" || word == "the" || word == "over" || word == "and"
      word.downcase
    else
      word.capitalize!
    end
  end

  words_array[0].capitalize!

  words_array.join(" ")
end
