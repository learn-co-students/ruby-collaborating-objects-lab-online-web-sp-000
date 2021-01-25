class MP3Importer
  attr_accessor :path
  def initialize(path)
    # get all .mp3 files and add to @files
    @path = path
  end

  def files
    # load all mp3 files and remove path from the name
    Dir["#{path}/*.mp3"].collect {|name| name[@path.length + 1, name.length]}
  end

  def import
    self.files.each {|name| Song.new_by_filename(name)}
  end
end
