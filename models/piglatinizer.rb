class PigLatinizer
  # attr_reader :text
  #
  # def initialize(text)
  #   @text = text.downcase
  # end

  def piglatinize(text)
    words = text.split(" ")
    words.map do |word|
      if word.start_with?(/^[aeiou]/i)
        "#{word}" + "way"
      else
        letters = word.split /([aeiou].*)/
        pig_latin_word = "#{letters[1]}" + "#{letters[0]}" + "ay"
      end
    end.join(" ")
  end

end
