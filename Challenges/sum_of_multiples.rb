# have a number, which is a limit
# and then find the multiples of 3 and 5 un until that number
# and then add them all up 
# I need to make a range and 
# then save then numbers in an array 
# and then add them up.


# class SumOfMultiples

#   def initialize(*multipliers)
#     @multipliers = [multipliers].flatten
#     if @multipliers.empty?
#       @multipliers = [3, 5]
#     else
#       @multipliers = [multipliers].flatten
#     end
#   end

#   def to(limit)
#     @limit = limit
#     p calc_multiples
#   end

#   def calc_multiples 
#     multiples_array = [0]  
#     @multipliers.each do |multi|      
#       while multiples_array.last + multi < @limit
#         multiples_array << multiples_array.last + multi
#       end
#       multiples_array << 0
#     end
#     multiples_array.uniq.reduce(:+)
#   end
# end

# SumOfMultiples.new(43, 47).to(20)


class SumOfMultiples

  def initialize(*multipliers)
    @multipliers = [multipliers].flatten
    if @multipliers.empty?
      @multipliers = [3, 5]
    else
      @multipliers = [multipliers].flatten
    end
  end

  def to(limit)
    self.class.to(limit) 
  end

  def self.to(limit)
    @limit = limit
    p calc_multiples
  end

  def self.calc_multiples   
    @multipliers ||= []
    if @multipliers.empty?
      @multipliers = [3, 5]
    else
      @multipliers = [multipliers].flatten
    end
    multiples_array = [0]
    @multipliers.each do |multi|      
      while multiples_array.last + multi < @limit
        multiples_array << multiples_array.last + multi
      end
      multiples_array << 0
    end
    multiples_array.uniq.reduce(:+)
  end
end

SumOfMultiples.new(5, 9).to(20)