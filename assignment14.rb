# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)


  def self.pluralpig(text)

    arr = text.split
    arr.each do |a|
      if a[0] == VOWELS
        pigatized_text = a + "way"
      else
        pigatized_text = a + a.slice!(0) + "ay"
      end
      print pigatized_text
      print " "
    end

  end

end

puts "Please enter a word or phrase and I will translate to pig latin"
text = gets.chomp



puts "Pigatized: #{PigLatin.pluralpig(text)}"
