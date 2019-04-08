class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  
  end
  
  def files

    @files = Dir.glob("#{path}/*.mp3")
    @files.collect do |file|
      file[21..-1]
    end
  end
  
  def import
    files
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
end