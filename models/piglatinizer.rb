require 'pry'
class PigLatinizer
  def piglatinize(phrase)
    words = phrase.split(" ")
    new_words = []

    words.map do |word|
      vowel_index = word.index(/[aeiouAEIOU]/)

      if vowel_index == 0
        new_word = "#{word}way"
      else
        new_word = "#{word[vowel_index..-1]}#{word[0...vowel_index]}ay"
      end

      new_words << new_word
      # binding.pry
    end

    new_words.join(" ")
  end
end
