class Octal
  def initialize(digit)
    @digits = digit.chars
  end

  def to_decimal
    return 0 if @digits.any? { |digit| digit =~ /[^0-7]/ }
    multi = @digits.length - 1
    result = 0
    @digits.map(&:to_i).each do |num|
      result += num * 8 ** multi
      multi -= 1
    end
    result
  end
end
