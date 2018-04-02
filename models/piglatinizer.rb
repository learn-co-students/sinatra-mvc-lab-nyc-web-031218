class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def translate
    self.text.split(" ").map do |word|
      word = word.gsub("qu", " ")
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      word = word.gsub(" ", "qu")
    end
  end

end
