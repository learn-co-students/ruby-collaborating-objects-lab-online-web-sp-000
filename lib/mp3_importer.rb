class MP3Importer
  @@all =  []
  
  attr_accessor :path, :fileDirArray, :fileNameArray
  
  def initialize(filePath)
    @path = filePath
    @@all << self
    # stored all file paths in @@all. File paths are the objects, not the actual mp3 files in it.
    # @path is an object. Need to access path name => 
    # self.path = "./spec/fixtures/mp3s/..."
  end
  
  def files
    # loads all the mp3 files in the path directory
    @fileDirArray = Dir["#{@path}/*.mp3"]

    # normalizes the filename to just the mp3 filename with no path
    @fileNameArray = []
    @fileDirArray.each do |i|
      @fileNameArray << i.gsub("#{@path}/", "")
    end
    @fileNameArray
  end

  def import
    # imports the files into the library by creating songs from a filename
    self.files.each {|i| Song.new_by_filename(i)}
  end
end




