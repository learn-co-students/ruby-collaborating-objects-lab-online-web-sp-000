class MP3Importer 
  
  attr_accessor :path
  
  def initialize(filename)
    @path = filename # associates the given data with the @path instance variable
  end 
  
  def files 
    @files = Dir.entries(@path)
      # loads the mp3 files from the directory and normalizes the filename
    @files.delete_if {|file| file == "." || file == ".."}
      # removes unnecessary data
  end
  
  def import
    self.files.each { |filename| Song.new_by_filename(filename) }
      # iterates over files and uses Song class #new_by_filename to create new songs
  end 
  
end