require 'pry'

class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    # binding.pry
    word.split(" ").map { |w| latinize_word(w) }.join(" ")
  end

  def latinize_word(word)

    index_of_vowel = 0
    while(!is_vowel(word[index_of_vowel]))
      index_of_vowel += 1
    end
    result = word[index_of_vowel...word.length] + word[0...index_of_vowel]
    result += is_vowel(word[0]) ? "way" : "ay"
  end

  def is_vowel(word)
    word.downcase.match(/[aeiou]/)
  end

end
#
# pl = PigLatinizer.new
# pl.piglatinize("please")
# pl.piglatinize("until")
# pl.piglatinize("below")
