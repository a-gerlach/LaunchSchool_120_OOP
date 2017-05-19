class DNA

  def initialize(string)
    @dna_string_1 = string.chars
  end

  def hamming_distance(dna_string_2)
    dna_string_2_array = dna_string_2.chars
    counter = 0
    result = 0
    loop do 
      if @dna_string_1[counter] != dna_string_2_array[counter]
        result += 1
      end
      counter += 1
      break if @dna_string_1[counter] == nil || dna_string_2_array[counter] == nil
    end
    p result
  end

end
