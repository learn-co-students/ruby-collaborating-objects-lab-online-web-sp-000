require 'pry'

class MP3Importer

attr_accessor :path
 
   def initialize(path)
       @path = path
   end
 
   def files
       @files = Dir.entries(@path)      
       @files.delete_if {|file| file == "." || file == ".."}
   end

   def import
    files.each do |file|
        Song.new_by_filename(file)
    end
    #taking our files and going over each file
    #creating a new song by file name from that file
   end

end