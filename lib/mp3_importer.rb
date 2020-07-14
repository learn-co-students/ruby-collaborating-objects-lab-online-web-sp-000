class MP3Importer

  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    @file ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end
