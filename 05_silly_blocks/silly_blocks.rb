def reverser
    a = yield.split(' ')
    b = []
    for i in a
      b.push(i.reverse)
    end
    b.join(' ')
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  num.times do yield()
  end
end