require 'pry'

class MP3Importer
  attr_accessor :path, :song 
  
  def initialize(path)
    @path = path 
    @@all = [] 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 

  def self.import 
   path = Dir.glob("*.mp3") {|filename|}
   puts filename
   #Song.new_by_filename(some_filename)}
  end 
  
  def self.files(filename) 
    filename.each.split(" - ")
    puts MP3 
  end 
end 
end 