# Nadav

class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
    @files = Dir.children(@path)
  end
  
  def files
    @files
  end
  
  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end