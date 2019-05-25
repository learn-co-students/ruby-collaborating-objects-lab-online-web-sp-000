class MP3Importer 
  attr_accessor :path, :file, :files
  
  def initialize(filepath)
    @path = filepath 
  end 
  
  def files 
    @files = Dir.glob("#{path}/*.mp3").collect {|file|
      file.gsub("#{path}/", "")
    }
  end 
  def import
    files.each do |f|
      new_song = Song.new_by_filename(f)
    end 
  end 
end 