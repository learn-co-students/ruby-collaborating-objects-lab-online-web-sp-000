
class MP3Importer
  attr_accessor :path, :files
 
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(@path).select {|file| File.extname(file) == ".mp3" }
  end

  def import
    self.files.each { |file_name|  Song.new_by_filename(file_name) }
  end
end
