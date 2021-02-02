class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    filename = Dir.children(@path)
    filename
  end
  
  def import
    list_of_filenames = self.files
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
end  