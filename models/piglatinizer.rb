class PigLatinizer

  def piglatinize(string)
  words = string.split(" ")
  pig_latin = words.map{|word|
    if word[0].match(/([aeiou].*)/i) != nil
      word += "way"
      word
    else
    latin = word.slice!(/([aeiou].*)/i)
    latin = "#{latin}#{word}ay"
      latin
    end
  }
  pig_latin.join(" ")
  end

end
