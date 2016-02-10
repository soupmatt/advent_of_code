class StringClassifier
  attr_reader :str

  THREE_VOWLES_REGEXP = /[aeiou].*[aeiou].*[aeiou]/
  FORBIDDEN_STRING_REGEXP = /ab|cd|pq|xy/

  def initialize(str)
    @str = str
  end

  def nice?
    contains_3_vowels && contains_a_repeated_letter && doesnt_contain_forbidden_strings
  end

  def contains_3_vowels
    match_data = THREE_VOWLES_REGEXP.match(str)
    !match_data.nil?
  end

  def contains_a_repeated_letter
    result = false
    chars = str.chars
    chars.each_with_index do |c, i|
      if i < str.length - 1
        if chars[i+1] == c
          result = true
          break
        end
      end
    end
    result
  end

  def doesnt_contain_forbidden_strings
    match_data = FORBIDDEN_STRING_REGEXP.match(str)
    match_data.nil?
  end
end
