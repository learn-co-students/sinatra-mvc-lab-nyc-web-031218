require 'pry'

class PigLatinizer
  def piglatinize(text)
    @consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("")
    @vowels = "aeiouAEIOU".split("")
    @words_arr = text.split(" ")
    @piglatin_arr = []

    @words_arr.each do |word|

      if @consonants.include?(word[0]) && !@consonants.include?(word[1])
        @piglatin_arr << word[1..-1] + word[0] + "ay"

      elsif @consonants.include?(word[0]) && @consonants.include?(word[1]) && @consonants.include?(word[2])
        @piglatin_arr << word[3..-1] + word[0..2] + "ay"

      elsif @consonants.include?(word[0]) && @consonants.include?(word[1])
        @piglatin_arr << word[2..-1] + word[0..1] + "ay"

      elsif @vowels.include?(word[0])
        @piglatin_arr << word + "way"

      end

    end#/ .each

    @piglatin_arr.join(" ")

  end #/piglatinize

end#/class

PigLatinizer.new.piglatinize("Hello World")
