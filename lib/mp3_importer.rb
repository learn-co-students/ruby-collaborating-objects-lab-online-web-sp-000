class MP3Importer

  attr_reader :path

  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end 

  def files
    @files ||= Dir.glob("#{path}/*.mp3").map do |f|
      f.gsub("#{path}/", "")
    end 
  end 

  def import
    files.each do |file|
      Song.new_by_filename(file) 
    end
  end

end 