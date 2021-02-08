require 'pry'

class MP3_Importer
  attr_accessor :filename, :song 
  
  def initialize(filename)
    @filename = filename 
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