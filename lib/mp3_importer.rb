class MP3Importer
  attr_accessor :filename, :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir["#{@path}/*.mp3"].collect { |file| file.slice(/([A-Z].*)/) }
  end
  
  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end