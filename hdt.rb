divisors = 0
i = 1
j = 1
while divisors < 500
  j += 1
  i += j
  divisors = 0
    if i % 2 == 0
      for n in (1..i)
      if i % n == 0
        divisors += 1
      elsif divisors > 500
        break
      end
    end
  puts divisors
  puts i
end
end
puts i

