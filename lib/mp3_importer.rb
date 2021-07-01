class MP3Importer
  attr_reader :path
  attr_accessor :files_array 

  # Accepts a file path to parse mp3 files from
    # e.g. "./spec/fixtures/mp3s"
  def initialize(file_path) 
    @path = file_path
    @files_array = []
    self.files
  end
  
  # Loads all the mp3 files in the path directory
  # Normalizes the filename to just the mp3 filename with no path 
    # TEST: music_importer.files.size #=> 4
  def files
    @files_array = Dir.entries(self.path).select {|f| !File.directory? f}
    # This returns:
      # ["Action Bronson - Larry Csonka - indie.mp3",
      # "Real Estate - Green Aisles - country.mp3",
      # "Real Estate - It's Real - hip-hop.mp3",
      # "Thundercat - For Love I Come - dance.mp3"]
  end
  
  def import
    @files_array.collect {|filename| Song.new_by_filename(filename) }
  end
end
