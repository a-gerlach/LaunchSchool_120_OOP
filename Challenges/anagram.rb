

class Anagram
  attr_reader :search_string
  def initialize(search_string)
    @search_string = search_string
  end

  def match(string_arr)
    limit = calculate_max_poss
    result = []
    no_result = []
    loop do
      x = search_string.chars.shuffle.join
      if string_arr.include?(x)
        p result << x
        string_arr.delete(x)
      else
        no_result << x
        break if no_result.uniq.size == limit
      end
    end
    p result
  end

  def calculate_max_poss
    search_array = @search_string.chars.uniq.join
    max_possibilieties = (1..search_array.size).inject(:*)
    p max_possibilieties
  end

  # def match(string_arr)
  #   string_arr
  #   result = []
  #   string_arr.each do |x|
  #     if create_all_poss.include?(x)
  #       result << x
  #     end
  #   end
  #   result.delete(@search_string)
  #   p result
  # end

  # def create_all_poss
  #   max_possibilieties = (1..@search_string.size).inject(:*)
  #   all_anagrams = []
  #   search_string_array = search_string.chars
  #   loop do 
  #     all_anagrams << search_string_array.shuffle.join
  #     all_anagrams.uniq!
  #     break if all_anagrams.size == max_possibilieties
  #   end
  #   all_anagrams.sort
  # end
end

detector = Anagram.new('allergy')
detector.match(%w( gallery ballerina regally clergy largely leading))