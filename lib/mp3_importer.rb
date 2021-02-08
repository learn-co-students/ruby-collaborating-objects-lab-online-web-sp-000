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
  
  def self.files 
  end 

  def self.import 
   Dir.glob("*.mp3") {|filename|
   Song.new_by_filename(some_filename)}
  end 
end 