# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)


  def self.pluralpig(text)
    pigatized_array = Array.new
    x = 0
    arr = text.split
    arr.each do|a|
      if VOWELS.include? a[0].downcase
        pigatized_text = a + "way"
      else
        pigatized_text = a.downcase.chars.rotate.join + "ay"
      end
    pigatized_array[x] = pigatized_text
    x += 1
    end
  return pigatized_array.join(" ")
  end

end

puts "Please enter a word or phrase and I will translate to pig latin"
text = gets.chomp



puts "Pigatized: #{PigLatin.pluralpig(text)}"
