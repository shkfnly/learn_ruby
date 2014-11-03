def echo(input)
  return input.to_s
end

def shout(input)
  return input.upcase
end 

def repeat(input, num = 1)
  result = input
  num = num - 1
  unless num < 1 
      result += ' ' + input
      num -= 1 
  end
  result += ' ' + input
  return result
end

def start_of_word(word, position)
  return word[0...position]
end

def first_word(word)
  result = word.split(/\s+/)
  return result[0]
end

def titleize(word)
  results = word.split(/\s+/)
  x = ['and', 'the', 'over']
  num = 0
  results.each do |elem| 
    unless x.include?(elem) and num != 0
      results[num] = elem.capitalize
    end
    num += 1
  end
  return results.join(' ')
end
