require "pry"
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path=path
    @files=[]
  end


  def files
    @files<<Dir.glob("#{@path}/*.mp3")
  end

#    binding.pry

end
