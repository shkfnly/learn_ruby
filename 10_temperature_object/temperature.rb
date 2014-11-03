class Temperature
  def initialize(input)
    @temperature = input.values[0]
    @system = input.keys
  end

  def in_fahrenheit
    if @system.include?(:f)
      @temperature
    else
      @temperature * 9.0/5.0 + 32
    end
  end

  def in_celsius
    if @system.include?(:c)
      @temperature
    else
      (@temperature - 32) * 5.0/9.0
    end
  end
  def self.from_celsius(temp)
    @@temp = temp
    @@sym = :c
    self
  end

  def self.from_fahrenheit(temp)
    @@temp = temp
    @@sym = :f
    self
  end

  def self.in_celsius
    if @@sym == :c
      @@temp
    else
      (@@temp - 32) * 5.0/9.0
    end
  end

  def self.in_fahrenheit
    if @@sym == :f
      @@temp
    else
      @@temp * 9.0/5.0 + 32
    end
  end

  



end

class Fahrenheit < Temperature
  def initialize(temp)
    @system = [:f]
    @temperature = temp
  end
end

class Celsius < Temperature
    def initialize(temp)
      @system = [:c]
      @temperature = temp
    end

  end