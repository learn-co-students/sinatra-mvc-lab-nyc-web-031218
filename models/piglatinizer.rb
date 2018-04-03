class PigLatinizer


  def initialize
  end

  def piglatin(string)
    one = string.split(/([aeiou].*)/)
    two = string.split(//)
    sep = one.last.split(//)
    vowels = ["a", "e", "i", "o", "u"]
    big_vowels = ["A", "E", "I", "O", "U"]
    all_vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if all_vowels.include?(two.first)
      join = two.push("way").join
    elsif vowels.include?(sep.first)
      pig = one.shift
      join = one.push(pig + "ay").join
    elsif big_vowels.include?(sep.first)
      pig = one.shift
      join = one.push(pig + "way").join
    end
  end

  def piglatinize(string)
    spaced = string.split(" ")
    if spaced.length == 1
      array = spaced.map { |werd| piglatin(werd) }
      array.first
    else
      array = spaced.map { |werd| piglatin(werd) }
      array.flatten.join(" ")
    end
  end


end
