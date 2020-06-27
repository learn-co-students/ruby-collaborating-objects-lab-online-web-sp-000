require 'pry'

class MP3Importer


attr_accessor :path

def initialize(path)

@path = path
@files = []

end



def files
  Dir.each_child(@path) { |filename|
if filename[-4..-1] == ".mp3"
   @files << filename
 end
  }
  return @files
end

def import
  self.files
  @files.each {|filename|
    Song.new_by_filename(filename)
  }
end






end
