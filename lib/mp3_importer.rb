class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir.chdir("#{path}"){Dir.glob("*.mp3")}
  end
  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
