#need to figure out the clearing logic when an 

class RPNCalculator
  attr_accessor :result, :equation
  def initialize
    @calculator = []
    @syms = ['-','+','*','/']
  end

  def push(elem)
    @calculator.push(elem)
  end

  def value
    @calculator.last
  end

  def plus
    if @calculator.size >= 2
      sum = @calculator.pop + @calculator.pop
      @calculator << sum
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @calculator.size >= 2
      second = @calculator.pop
      result = @calculator.pop - second
      @calculator << result
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @calculator.size >= 2
      denominator = @calculator.pop
      result = @calculator.pop.to_f / denominator
      @calculator << result
    else
      raise "calculator is empty"
    end
  end

  def times
    if @calculator.size >= 2
      result = @calculator.pop.to_f * @calculator.pop
      @calculator << result
    else
      raise "calculator is empty"
    end
  end

  def tokens(str)
    a = str.split(/\s/)
    a.map do |x|
      if @syms.include?(x)
        x.to_sym
      else
        x.to_i
      end
    end
  end

  def evaluate(y)
    tokens(y).each do |s|
      case s
      when :+
        self.plus
      when :-
        self.minus
      when :/
        self.divide
      when :*
        self.times
      else
        self.push(s)
      end
    end
    self.value
  end

=begin
  
  
   
    a = str.split(/\s/)
    
    b = RPNCalculator.new
    for elem in a
      @calculator.push(elem)
    end
    
    operator = @calculator.pop
    
    unless @syms.include?(@calculator.last)
      @calculator.evaluate2(operator)
    else
      operator2 = @calculator.pop
      self.evaluate2(operator2.to)
      self.evaluate2(operator)
    end
  end



  def evaluate2(oper)
   case oper
     when "+"
       self.plus
     when "-"
       self.minus
     when "/"
       self.divide
     when "*"
       self.times
   end
  end 
=end

end