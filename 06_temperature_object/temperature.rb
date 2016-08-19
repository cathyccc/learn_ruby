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
    if @hash.has_key?[:c]
      celsius = @hash[:c]
    else
      celsius = (@hash[:f] - 32) * 5 / 9.0
    end
    return celsius
  end
end

class Fahrenheit < Temperature
end

class Celsius < Temperature
  def initialize

  end
end
