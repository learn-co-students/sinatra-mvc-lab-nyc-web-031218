class Piglatinizer < ActiveRecord::Base

  def update(input)
    array = []
    array = input.split(/\W+/)
    n = array.map do |word|
      a = []
      word.scan /\w/
    end
    o = n.map do |split_word|
      m = split_word
      m << split_word.slice!(0)
      m << "a"
      m << "y"
      m.join()
    end
    o.join(" ")
  end

end
