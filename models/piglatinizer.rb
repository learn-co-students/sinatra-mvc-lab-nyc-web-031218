class PigLatinizer
  attr_accessor :text

  def piglatinize(text)
    phrase = []
    text.split(" ").each do |word|
      if word =~ (/\A[aeiou]/i)
        word = word + 'way'
      else
        until word =~ (/\A[aeiou]/i)
          match = /\A[^aeiou]/i.match(word)
          word = match.post_match + match.to_s
        end
        word = word + "ay"
      end
      phrase << word
    end
    phrase.join(" ")
  end

  def splits
    @text.split(" ")
  end
end
