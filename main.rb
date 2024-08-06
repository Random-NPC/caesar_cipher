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
  alpha.map! {|num| num > 90 && num < 97 || num > 122 ? num - 26 : num = num}
  alpha.map! {|num| num.chr}
p alpha.join('')
end
caesar_cipher('What a string!', 5)
