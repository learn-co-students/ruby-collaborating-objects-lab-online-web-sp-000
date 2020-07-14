class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files 
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end 
  
  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
  
end