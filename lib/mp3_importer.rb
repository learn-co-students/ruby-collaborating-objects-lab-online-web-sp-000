require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end
  def files
    my_files = Dir.entries(self.path)
    my_files.select {|x| x[/\.mp3$/]}
  end
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
