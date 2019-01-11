class MP3Importer

  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
    @files = []
  end

  # loads all the mp3 files in the path directory
  def files
    files = Dir["#{@path}/*.mp3"]
    files.each do |filename|
      tokens = filename.split("/")
      @files << tokens[tokens.length - 1]
    end
    @files
  end

  def import
    self.files
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
