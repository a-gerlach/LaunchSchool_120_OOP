class Sieve
  def initialize(limit)
    @limit = limit
    @marked_numbers = [] # the array of multiples or marked numbers
  end

  def primes
    result = []
    (2..@limit).each do |number|
      if @marked_numbers.include?(number)
        next # if the number if in the marked numbers array we skip it (this is what the taks asks us to do)
      else
        result << number # add the number to the result array
        duplicates(number) # find all duplicates
      end
    end
    result
  end

  def duplicates(num)
    counter = num # counter increase the number by itself
    num += counter # we start with the first duplicate

    while num <= @limit
      @marked_numbers << num # add the number
      num += counter #  increase it by itself
    end
    @marked_numbers.uniq.sort # these are now the marked numbers
  end
end
