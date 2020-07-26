class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir["#{@path}/*.mp3"].each do |filename|
      files << filename.split("/")[-1]
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
