class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").map {|i| i.delete_prefix("#{@path}/")}
    @files
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end
