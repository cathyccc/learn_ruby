class Temperature
  def initialize(hash)
    @hash = hash
  end

  def to_fahrenheit
    if @hash.has_key?(:f)
      fahrenheit = @hash[:f]
    else
      fahrenheit = @hash[:c] * 9 / 5.0 + 32
    end
    return fahrenheit
  end

  def to_celsius
    if @hash.has_key?(:c)
      celsius = @hash[:c]
    else
      celsius = (@hash[:f] - 32) * 5 / 9.0
    end
    return celsius
  end

  # assert_equal 50, Temperature.in_celsius(50).to_celsius
  # assert_equal 122, Temperature.in_celsius(50).to_fahrenheit

  def self.in_celsius(temperature)
    temperature
  end

  def self.in_fahrenheit(temperature)
    temperature
  end

end

class Fahrenheit < Temperature
end

class Celsius < Temperature
end
