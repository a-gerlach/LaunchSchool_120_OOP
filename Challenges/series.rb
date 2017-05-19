# First Solution
class Series
  attr_reader :series

  def initialize(series)
    @series = series.chars.map(&:to_i)
  end

  def slices(num_of_slices)
    raise ArgumentError, "The slice you are asking for is bigger than the Series" if num_of_slices > @series.size
    first_element = 0
    second_element = num_of_slices - 1
    result = []
    loop do
      result << series[first_element..second_element]
      first_element += 1
      second_element += 1
      break if series[second_element] == nil?
    end
    result
  end
end

# Refactored Solution

class Series
  def initialize(series)
    @series = series
  end

  def slices(num_of_slices)
    raise ArgumentError, "The slice you are asking for is begger than the input" if num_of_slices > @series.size
    p @series.chars.map(&:to_i).each_cons(num_of_slices).to_a
  end
end
