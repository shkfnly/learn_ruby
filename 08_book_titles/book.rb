class Book
  attr_accessor :title
    def title=(newTitle)
      conjunctions = ['and', 'or', 'in', 'the', 'of', 'a', 'an']
      title = newTitle.split(' ')
      result = []
      first = 0
      title.each do |x|
        if first == 0
          result.push(x.capitalize)
        elsif conjunctions.include?(x)
          result.push(x)
        else
        result.push(x.capitalize)
        end
        first += 1
      end
      @title =  result.join(' ')
    end
end

