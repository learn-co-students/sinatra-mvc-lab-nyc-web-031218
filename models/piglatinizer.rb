class PigLatinizer
  def initialize
  end

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text.split(" ").map do |word|
      if vowels.include?(word[0].downcase)
        word + "way"
      else
        index = word.split("").index{|letter| vowels.include?(letter.downcase)}
        word.slice(index..-1) + word.slice(0..index-1) + "ay"
      end
    end.join(" ")
  end
end
