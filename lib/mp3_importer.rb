class MP3Importer
  
  attr_accessor :path, :song
  
  def initialize(path)
    @path = path
  end
  
  def files
    #loads all the mp3 files inthe path directory
    files_to_load = Dir["#{path}/*.mp3"]
    
    #normalizes the filename to jsut the mp3 filename with no path 
    normalized = [ ]
    files_to_load.collect do |files|
      normalized << files.scan(/[A-Z].+ .+ - .+\.mp3/)
    end
    p song_artist_genre = normalized.join(",").split(",")
  end
  
  def import
    #imports the files into the library by creatingsongs from a filename
    files.collect do |file|
      Song.new_by_filename(file)
    end
  end
  
end