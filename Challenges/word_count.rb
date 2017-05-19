class Phrase
  attr_reader :string
  def initialize(string)
    @string = string.gsub(/[^0-9a-zA-Z""'' ]/, "").split(" ")
  end

  def word_count
    result = {}
    string.each do |word|
      word.downcase!
      if !result.has_key?(word)
        result[word] = 1
      else
        result[word] += 1
      end
    end
    p result
  end
end

Phrase.new('word hi hi').word_count