class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |i| i.gsub("#{path}/", "")}
  end

  def import
    files.each do |i|
      Song.new_by_filename(i)
    end
  end


end