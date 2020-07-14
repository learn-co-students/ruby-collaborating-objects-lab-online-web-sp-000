class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
  end
  
  def files 
    Dir.entries(path)[1..-2]
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end