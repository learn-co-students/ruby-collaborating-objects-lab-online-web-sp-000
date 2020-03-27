class MP3Importer
  attr_accessor :file, :files
  def initialize(file)
    @file = file
    @files = []
    # @files = File.open(file)
    # @files.readlines.map(&:chomp)
  end
  def path
    @file
  end
  def files
    Dir.foreach(@file) do |fname|
     @files << fname
    end
    @files.delete(".")
    @files.delete("..")
    @files
  end
  def import
   files.each{ |filename| Song.new_by_filename(filename) }
  end

end
