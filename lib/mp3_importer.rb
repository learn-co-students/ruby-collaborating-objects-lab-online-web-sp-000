require "pry"
class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path=path
  end


  def files
    Dir.glob("#{@path}/*.mp3")
  end

#  binding.pry

end
