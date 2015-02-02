require 'net/http'

bttf = URI("http://www.scifiscripts.com/scripts/backtothefuture_transcript.txt")

text = Net::HTTP.get(bttf)


open("script.txt", "a") do |b|
  b.puts text
end
