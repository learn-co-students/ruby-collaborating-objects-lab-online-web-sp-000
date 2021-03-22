class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  def import
    files.each do |filename| Song.new_by_filename(filename)
  end
end
  ##########
  def files
  @files = Dir.entries(@path)#(self.path)[2..5]
  @files.delete_if {|file| file == "." || file == ".."}
  #!  @files = Dir.entries(path)
#!  @files.delete_if {|file| file == "." || file = ".."}
#loads all the mp3 files in the path directory
#normalizes the filename to just the mp3
#filename with no path
  end

end
