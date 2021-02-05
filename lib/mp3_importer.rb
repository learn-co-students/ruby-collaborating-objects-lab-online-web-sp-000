class MP3Importer
  attr_accessor :path, :size 
  
def initialize(path)
  @path = path
end

def files
  @files ||= Dir.glob("#{path}/*.mp3").collect { |f| f.gsub("#{path}/", "" ) }
end

def import
files.each do |name| 
Song.new_by_filename(name)
end
end
 
end
