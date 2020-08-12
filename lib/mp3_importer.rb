require 'pry'

class MP3Importer
  attr_accessor :files, :path

  def initialize(file_path)
    @path = file_path
    files
    import
  end

  def files
    # binding.pry
    @files = Dir.entries("#{@path}").select {|f| !File.directory? f}
    # binding.pry
  end


  def import
    # binding.pry
    @files.each {|file| Song.new_by_filename(file)}
  end


end
