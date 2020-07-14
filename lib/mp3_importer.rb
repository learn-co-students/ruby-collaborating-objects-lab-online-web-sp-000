require "pry"

class MP3Importer
  
  attr_accessor :path
 
 def initialize(path)
   @path = path
   @filenames = []
 end
 
 def files
  @path = Dir["#{path}/*.mp3"]
  files = @path.join(" ").split("/")
    files.each do |f|
      if f.include?(".mp3")
        if f.chars.last == "."
          @filenames << f.chop!.chop!
        else
        @filenames << f
        end
      end
    end
    @filenames
 end
 
 def import
   files.each {|i| Song.new_by_filename(i)}
 end


end