def caesar_cipher(sentence, pos_moved)
  alpha = []
  sentence.split('').map {|val| alpha.push(val.ord) }
  alpha.map! do |num|
    if num > 64 and num < 91 or num > 96 and num < 122
      num + pos_moved
    else
      num = num
    end
  end
p alpha
end
caesar_cipher('What a string!', 5)
