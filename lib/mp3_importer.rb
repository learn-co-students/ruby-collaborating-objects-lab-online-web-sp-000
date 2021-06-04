require 'pry'
class MP3Importer
  attr_accessor :files
  def initialize(filepath)
    @filepath = filepath
    @files = []
  end

  def path
    @filepath
  end

  def import
    @files = @filepath.glob['*.mp3']
    binding.pry 
  end

end
