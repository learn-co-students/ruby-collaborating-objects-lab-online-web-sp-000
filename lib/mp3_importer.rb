class MP3Importer
  attr_accessor :path
  attr_reader :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.children(file_path)
  end

  def import
    files.each {|file| Song.new_by_filename(file) }
  end


end