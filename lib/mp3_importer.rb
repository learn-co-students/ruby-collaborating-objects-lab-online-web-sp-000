class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |x| x.gsub("#{path}/","")}
  end

  def import
    files.each{|y| Song.new_by_filename(y)}
  end
end