class MP3Importer
  require 'pry'
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    # @files = Dir["#{@path}/*.mp3"]
    Dir.entries(@path).select {|f| !File.directory? f}
    # binding.pry
  end

  def import
    # binding.pry
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
