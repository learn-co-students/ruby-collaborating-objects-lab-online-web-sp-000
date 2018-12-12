class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries("#{path}/*.mp3").collect {|song| song.chomp(".mp3")}
  end

end
