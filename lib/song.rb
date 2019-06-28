require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file_name)
    name=file_name.split(" - ")[1]
    import=self.new(name)

    song_artist=file_name.split(" - ")[0]
    Artist.new(song_artist).save[0].add_song(import)
    import
#    import.artist=file_name.split(" - ")[0]
#    import.artist=file_name[0]

#    import.genre=file_name[2]
  end

#  binding.pry

end
