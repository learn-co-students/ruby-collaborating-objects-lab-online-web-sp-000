class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @@files = Dir.entries(@path) - %w[.. .]
  end
  
  def import
  @@files.each do |item|
    Song.new_by_filename(item)
    end
  end
  
end