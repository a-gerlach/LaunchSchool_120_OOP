class Trinary

  LETTER_VALUES = {
    "a" => 10,
    "b" => 11,
    "c" => 12,
    "d" => 13,
    "e" => 14,
    "f" => 15
  }
  def initialize(str)
    @digits = str.chars
  end

  def to_decimal
    return 0 if @digits.any? { |digit| digit =~ /[^0-9,a-f]/ }
    @digits
      .map(&:to_i)
      .reverse
      .each_with_index
      .map { |digit, index| digit * (3 ** index) }
      .inject(:+)
  end

  def convert_letters_to_values
    p @digits
  end
end

p Trinary.new('abc').convert_letters_to_values