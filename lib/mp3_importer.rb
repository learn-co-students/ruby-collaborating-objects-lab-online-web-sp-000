

class MP3Importer
  attr_accessor :path



#given "path" -- "./spec/fixtures/mp3s"
  def initialize(path)
    @path = path

  end

#Accessing the local directory
#concatenation of the path is the same syntax as vars
#Dir is the home directory CLASS
#.glob as a method on Dir returns all the files w/ (definition)
#collects those into an array and then removes the path from them using
#.gsub

  def files
    @files = Dir.glob("#{path}/*.mp3").collect{|file| file.gsub("#{path}/", "")}
  end

#using our new files, run that bad boy back up the sonnnnng chain

  def import
    files.each{|file| Song.new_by_filename(file)}
  end

end
