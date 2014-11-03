class Dictionary
  attr_accessor :entries
  def initialize
    @entries ||= {}
  end
  def add(x)
    if x.is_a?(String)
      @entries[x] = nil
    else
      x.each do |key, value|
        @entries[key] = value
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(x)
    
    if @entries.keys.any? { |y| y == x }
      return true
    else
      return false
    end
  end

  def find(x)
    result = {}
    for elem in keywords
      if elem.include?(x)
        result[elem] = @entries[elem]
      end
    end
    return result
  end
  
  def printable
    a = @entries.sort.map do |key, value|
      "[#{key}] \"#{value}\""
    end
    a.join("\n")
  end

end