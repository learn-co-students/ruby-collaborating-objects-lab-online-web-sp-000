class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    Dir.entries(path).reject { |file| file[0].include?(".") } 
  end 
  
  def import 
    # binding.pry 
    import_files = nil 
    files.each do |file| 
      import_files = Song.new_by_filename(file)
    end 
    import_files 
  end 
  
end 