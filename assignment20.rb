class String
  VOWELS =  %w(a e i o u)


  def pigatize
    pigatized_array = Array.new
    x = 0
    arr = self.split
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

#puts "Please enter a word or phrase and I will translate to pig latin"
#text = gets.chomp

#puts "Pigatized: #{text.pigatize}"
