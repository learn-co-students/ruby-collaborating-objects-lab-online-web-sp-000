require "pry"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path="../spec/mp3s/")
    # binding.pry
    @path = path
    @files = []
    # binding.pry
  end


  def files
    Dir.glob("#{@path}/*.mp3").each do |filename|
      @files << filename.gsub("#{@path}/", "")
    end

    @files
  end

  def import
    # binding.pry
    files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
