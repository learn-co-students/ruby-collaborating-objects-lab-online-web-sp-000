require 'pry'
class MP3Importer
 
  attr_accessor :path 
  
  @@all = []
  
  def initialize(path)
   @path = path 
   @@all << self 
  end   
  
  def files 
    path_with_mp3 = Dir[@path+"/*.mp3"]
    path_with_mp3.map {|element| element.split("/")[-1]}
  end   

 def import
   files.each {|file| Song.new_by_filename(file)}
 end 
end      