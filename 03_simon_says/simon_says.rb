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
