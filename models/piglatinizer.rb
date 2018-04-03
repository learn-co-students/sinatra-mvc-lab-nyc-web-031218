class PigLatinizer
  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

def initialize

end

def piglatinize(str)
  arr = str.split(" ")
  result = []

  arr.each_with_index do |word, i|
    translation = ''
    qu = false
    if @@vowels.include?(word[0])
      translation = word + 'way'
      result.push(translation)
    else
      word = word.split('')
      count = 0
      word.each_with_index do |char, index|
        if @@vowels.include?(char)
          if char == 'u' && translation[-1] == 'q'
            qu = true
            translation = arr[i][count + 1..arr[i].length] + translation + 'uay'
            result.push(translation)
            next
          end
          break
        else
          if char == 'q' && word[i+1] == 'u'
            qu = true
            translation = arr[i][count + 2..arr[i].length] + 'quay'
            result.push(translation)
            next
          else
            translation += char
          end
          count += 1
        end
      end
      if not qu
        translation = arr[i][count..arr[i].length] + translation + 'ay'
        result.push(translation)
      end
    end
  end
  result.join(' ')
end

end
