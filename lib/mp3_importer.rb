class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir["#{@path}/*.mp3"].map { |file| file.sub("#{@path}/", "") }
  end

  def import()
    @files.each { |file| Song.new_by_filename(file) }
  end
end
