class MP3Importer
  
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    mp3_files = Dir.glob(@path + '/*').select { |f| File.file?(f)}
    
    mp3_files.map { |f| File.basename(f)}
  end
  
  def import
    files.each { |f| Song.new_by_filename(f) }
  end
  
end

# parses directory of files
# sends filenames to a Song class to create a library of music