require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = self.files
  end

def files
@files = Dir.chdir(@path) {Dir.glob("*.mp3")}
end

def import
  @files.each do |song|
    song = Song.new_by_filename(song)
  end
end

end
