def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return (num1 - num2)
end

def sum(array)
  total = 0
  array.each do |x|
    total += x
  end
  return total
end

def multiply(*args)
  total = 1
  args.each do |x|
    total *= x
  end
  return total
end

def power(base,exponent)
  return base ** exponent
end

def factorial(num)
  if num == 0
    return 1
  else
    return num * factorial(num - 1)
  end
end

factorial(5)