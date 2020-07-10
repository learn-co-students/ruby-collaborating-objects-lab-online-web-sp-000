class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  
    # loads all the mp3 files in the path directory
    # normalizes the file name to just the mp3 filename with no path
   def files
    files = []
      Dir.new(self.path).each do |file|
        files << file if file.length > 4
      end
    files
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename) }
  end

 
  
end