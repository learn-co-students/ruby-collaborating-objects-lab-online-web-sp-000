class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").map {|f| f.gsub("#{@path}/", "")}
  end

  def import
    new_songs = self.files
    new_songs.each {|filename| Song.new_by_filename(filename)}

  end

end
