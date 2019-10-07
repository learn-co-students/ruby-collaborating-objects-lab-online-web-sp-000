class MP3Importer

  attr_accessor :path # First, we call our 'path' attribute.

  def initialize(path) # Second, we initialize our attribute by using an argument and calling it below.
    @path = path
  end

  def files # Third, we create a 'files' method for loading our mp3 files.
    @files = Dir.entries(@path) # We use 'Dir.entries' to find our filenames assigned to our '@path'.
    @files.delete_if {|file| file == "." || file == ".."} # In order to remove files that don't fit our criteria, we use 'delete_if'.
  end

  def import # Fourth, we create a method that takes our filename and creates a song with an artist.
    self.files.each {|file| Song.new_by_filename(file)} # We iterate over each file and run it through our '.new_by_filename' to create songs.
  end

end
