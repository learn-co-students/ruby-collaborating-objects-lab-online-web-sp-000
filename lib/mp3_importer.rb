require 'pry'

 
class MP3Importer
  attr_accessor :path, :song 
  
  def initialize(path)
    @path = path 
  end 
 
  def files
    array_of_entries = Dir.entries(path)
    array_of_entries.delete(".") 
    array_of_entries.delete("..")
    array_of_entries
    end 

def import
  counter = 1 
  while counter <= 4
  Song.new_by_filename 
    counter +=1 
  end
end 
end 
 