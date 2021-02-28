class MP3Importer
  attr_accessor :path
  @files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_arr = Dir.entries(@path)
    file_arr.delete_if {|file| file.include?("mp3") == false}
    return file_arr
  end
  
  def import 
    file_arr = self.files
    
    file_arr.each do |file|
      Song.new_by_filename(file)
    end
  end
end