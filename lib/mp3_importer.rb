class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    #@files = []
  end

  def files
    Dir["#{path}/**/*.mp3"].collect {|file| file.partition(path + "/")[2]}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
end

#puts MP3Importer.new("./spec/fixtures/mp3s").files
