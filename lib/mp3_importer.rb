class MP3Importer

  attr_accessor :path

  def initialize(path) #accepts a file path to parse mp3 files from
    @path = path
  end

  def files # loads all the mp3 files in the path directory
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")} #normalizes the filename to just the mp3 filename with no path
  end

  def import #imports the files into the library by creating songs from a filename
    files.each {|song| Song.new_by_filename(song)}
  end

end