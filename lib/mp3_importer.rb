class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").collect {|str| str[21..str.length-1]}
  end

  def import
    files
    @files.each {|file| Song.new_by_filename(file)}
  end

end
