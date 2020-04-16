class MP3Importer

  attr_accessor :path
  def initialize(file)
    @path = file
  end

  def files
    path = @path+"/*"
    all = Dir[path]
    @all_songs =[]
    all.each do |song|
      @all_songs << song.split("mp3s/")[1]
    end
    @all_songs
  end

  def import
    self.files
    @all_songs.each do |song|
      Song.new_by_filename(song)
    end
  end


end

print Dir["./spec/fixtures/mp3s/*"]
