def translate(words)
  vowels = ['a', 'e', 'i', 'o', 'u']
  result =[]
  words = words.split(' ')
  words.each do |word|
    letters = word.scan(/\w/)
    while  !(vowels.include?(letters[0]))
        if letters[0..1].join() == 'qu'
          letters = letters[2..(letters.length-1)] + letters[0..1]
        else
          letters.push(letters.shift)
        end       
    end
    result.push(letters.join('') + 'ay')
  end
  return result.join(' ')
end

translate('quiet')