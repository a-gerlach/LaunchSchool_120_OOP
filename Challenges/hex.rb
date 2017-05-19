# do the same thing for hex, but also include numbers

class Hex

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
    return 0 if @digits.any? { |digit| digit =~ /[^0-9,a-f,A-E]/ }
    convert_letters_to_values
      .map(&:to_i)
      .reverse
      .each_with_index
      .map { |digit, index| digit * (16 ** index) }
      .inject(:+)
  end

  def convert_letters_to_values
    @digits.map do |element|
      if LETTER_VALUES.keys.include?(element.downcase)
        LETTER_VALUES[element.downcase]
      else
        element
      end
    end
  end
end

p Hex.new('1E42').to_decimal