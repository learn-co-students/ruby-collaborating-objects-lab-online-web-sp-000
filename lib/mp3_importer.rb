class MP3Importer
  attr_accessor :path, :files 
  
  def initialize(path)
    @path = path
    @files = files
  end 
  
  def files
    files = []
    all_files = Dir.entries(@path)
      all_files.each do |file|
        if file.include?("mp3")
          files << file
        end
      end
    files 
  end
  
  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
end ## end of MP3Importer class

############################################

=begin 

=end

##########################################