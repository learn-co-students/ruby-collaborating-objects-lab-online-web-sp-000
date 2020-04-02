class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end
  
  def import
    self.files.each do |file_name|
      song = Song.new_by_filename(file_name)
    end
  end

end