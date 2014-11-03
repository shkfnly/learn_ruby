class Array
  def sum
    result = 0
    for elem in self
      result += elem
    end
    return result
  end

  def square
    if self.empty?
      return self
    else
      self.map {|x| x * x}
    end
  end

  def square!
    for i in (0...self.length)
      self[i] = self[i] * self[i]
    end
    return self
  end

end