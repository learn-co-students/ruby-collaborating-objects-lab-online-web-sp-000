class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = []
  end 
  
  def files 
    f_path = @path + "/*mp3"
    songs = Dir[f_path]
    songs_trimmed = songs.collect do |song|
      song.gsub(/\.\/spec\/fixtures\/mp3s\//, "")
    end
    @files = songs_trimmed.collect do |song|
      song
    end
  end
  
  def import 
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end

