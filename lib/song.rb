require "pry"
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def artist=(name)
    @artist = name
    name.songs << self
  end
  def artist
    @artist
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    info = filename.match(/\w*.*(?=[.])/).to_s
    songname = Song.get_info(info, "songname")
    newsong = Song.new(songname)
    newsong.artist = Artist.find_or_create_by_name(Song.get_info(info, "artist"))
    #binding.pry
    newsong
  end

  def self.get_info(info, infotype)
    collection = info.split(" - ")
    case infotype
      when "artist"
        return collection[0].to_s
      when "songname"
        return collection[1].to_s
      when "genre"
        return collection[2].to_s
    end
  end
end
