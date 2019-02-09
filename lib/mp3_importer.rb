class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filename = []
    self.path = Dir["./spec/fixtures/mp3s/*.mp3"].map {|file| filename << file.split("./spec/fixtures/mp3s/")}
    filename.flatten.delete_if {|file| file == ""}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end
