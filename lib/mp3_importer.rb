class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def import
    self.files.each { |fn|
      Song.new_by_filename fn
    }
  end
  
  def files
    Dir["#{@path}/*.mp3"].map { |p| File.basename(p) }
  end
end