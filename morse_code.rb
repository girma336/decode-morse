DICTINARY = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
  'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
  'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---',
  '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
  '8' => '---..', '9' => '----.'
}.freeze

def decode_char(letter)
  DICTINARY.key(letter)
end

def decode_word(word_char)
  word = ''
  new_word = word_char.split
  new_word.map { |char| word += char.split.map { |cha| decode_char(cha) }.join }
  word
end

def decode(str)
  new_str = ''
  new_word_array = str.split('  ')
  new_word_array.map { |word| new_str += "#{word.split.map { |text| decode_word(text) }.join} " }
  new_str
end

puts decode_char('....')
puts decode_word('-- -.--')
puts decode('.... . .-.. .-.. ---  .-')
