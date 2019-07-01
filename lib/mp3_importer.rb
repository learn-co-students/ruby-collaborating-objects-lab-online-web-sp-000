# require 'pry'
# require_relative "../lib/song.rb"
# require_relative "../lib/artist.rb"

class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path).select { |file| file[/.*.mp3/] }
    # @files.select { |file| file[/.*.mp3/] }
  end

  def import
    self.files.each do |file|
      # binding.pry
      song = Song.new_by_filename(file)
      if !(Artist.all.include?(song.artist))
        Artist.all << song.artist
      end
    end
  end
# binding.pry
end
