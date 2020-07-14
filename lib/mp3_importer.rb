
 class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end 
  
  def files
    mp3s = []
    @files = `ls #{@path}`
    @files = @files.split("\n")
    @files.collect do |file| 
    if file.include?(".mp3")
      mp3s << file
    end
  end
    mp3s
  end 

def import
  files 
@files.each do |file|
  Song.new_by_filename(file)
end 
end
  
end