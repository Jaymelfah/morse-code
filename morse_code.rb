# decode letters
def decode_char(char)
  characters = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }
  characters[char]
end

# decode words
def decode_word(word)
  translated_word = ''
  
  word.split.each do |char|
    translated_word += decode_char(char)
  end

  translated_word
end

# decode sentence

 def decode_sentence(sentence)
    decoded_sentence = ''

    sentence.split(/  /).each do |word, i|
        if i.zero? 
            decode_sentence += decode_word(word)
        else
            decoded_sentence += " #{decode_word(word)}"
        end
    end
    
    decoded_sentence

 end

puts decode_char("-.")
puts decode_word("-. .- -- .")
puts decoded_sentence(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
