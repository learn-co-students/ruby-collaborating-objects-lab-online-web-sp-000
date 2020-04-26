class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = files
  end
  
  def files 
    @files = Dir.entries(@path).select {|item| item.size > 3}  
    # binding.pry
  end 
  
  def import
    @files.each{|x| Song.new_by_filename(x)}
    # binding.pry
  end 
  
end