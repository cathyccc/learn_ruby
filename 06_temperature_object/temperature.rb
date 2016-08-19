class Temperature
  def initialize(hash)
    @hash = hash
  end

  def to_fahrenheit
    @hash[:f]
  end

  def to_celcius
    
  end

end

class Fahrenheit < Temperature
end

class Celsius < Temperature
end
