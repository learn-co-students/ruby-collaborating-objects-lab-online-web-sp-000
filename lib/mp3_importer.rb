require 'pry'

class MP3Importer
  attr_accessor :path, :files 
  def initialize(path)
    @path = path 

    
  end 
  
  def files
    
    Dir.entries(path).select {|entry| entry.include?(".mp3")} #returns an array
   #@files = []
   #file = Dir.entries(@path)
   #file.each do |file| 
   #  if file.include?("mp3")
   #    @files << file
   #  end
   #end
   #  @files
    
  end
  
  
  def import
    files.each {|song| Song.new_by_filename(song)} #iterates through the file method acting on the                           #returned array and passing in the Song class method new_by_filename.
  end
  
end 