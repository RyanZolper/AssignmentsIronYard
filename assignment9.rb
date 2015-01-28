"Hello world".split(/ /)
"Hello world".split(' ')
"Peter Piper picked a pair of plump girls for his stable".split(/pick/)

stupidsaying= "You have brains in your head. You have feet in your shoes. You can steer yourself in any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go."

stupidsaying.gsub!(/You /,"I ")
stupidsaying.gsub!(/YOU are/,"I'M")
stupidsaying.gsub!(/you /,"I ")
stupidsaying.gsub!(/You're/,"I'm")
stupidsaying.gsub!(/your/,"my")

print stupidsaying

fistedsister= "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"
puts fistedsister.scan(/sh/).count
puts fistedsister.scan(/sho/).count

"He played football despite having an artificial foot." =~ /foot./

suzie = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

suzie =~ /sits./
