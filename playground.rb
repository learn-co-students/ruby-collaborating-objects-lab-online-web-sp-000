path = "./spec/fixtures/mp3s"

files = Dir["spec/fixtures/mp3s/*.mp3"]

#puts files.inspect

puts Dir.glob("spec/fixtures/mp3s/*.mp3").inspect


#puts Dir["/path/to/search/*"]