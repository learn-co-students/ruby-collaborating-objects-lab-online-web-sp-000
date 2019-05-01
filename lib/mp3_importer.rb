require 'pry'

class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(self.path).select do |file|
      file.split(".").last === "mp3"
    end
  end
  
  def import 
    self.files.each{ |song_file| Song.new_by_filename(song_file) }
  end
  
end