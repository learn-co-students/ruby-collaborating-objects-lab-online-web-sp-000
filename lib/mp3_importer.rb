class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
   @path = path
   @files = Dir.entries(path).grep(/.*\.mp3/)
  end
 
  def import
   files.each{|f| Song.new_by_filename(f)}
  end
  
end