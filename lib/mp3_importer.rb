class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| file.split("/mp3s/")[1]}
  end
  
  def import
    self.files.each {|name| Song.new_by_filename(name)}
  end
  
end