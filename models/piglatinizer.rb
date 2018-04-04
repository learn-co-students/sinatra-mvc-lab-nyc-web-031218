require 'pry'

class PigLatinizer

   @@vowels = ['a','e','i','o','u']

  def piglatinize (text)
    text_array = text.split(" ")
    results = text_array.map do |word|
      if @@vowels.include?(word[0].downcase)
       word + "way"
      else
        jumble = word.split(/([aeiou].*)/)
        (jumble[1]+jumble[0]+"ay")
      end
    end
    results.join(" ")
  end

end
