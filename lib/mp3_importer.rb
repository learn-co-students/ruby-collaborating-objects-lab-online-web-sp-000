class MP3Importer
  
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end
  
  def files
    filenames = Dir.entries("#{@path}").select {|file| file.end_with?("mp3")}
    filenames
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end