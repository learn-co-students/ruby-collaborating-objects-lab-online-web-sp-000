class MP3Importer
  attr_accessor :path, :size
  def initialize(file_path)
    @path = file_path
    @size = -1
  end
  
  def files
    binding.pry
    Dir[@path]
  end

end