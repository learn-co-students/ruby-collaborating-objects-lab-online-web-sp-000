
#since this lab is obselete, no one will likely care, but a little bug here:
#if you use any variable name other than @@all (i.e. @@all_artists, or @@artists)
#it breaks test #3 and returns a bunch of nonsense. Luckily it only took me 20
#minutes to figure that jazz out....

class Artist

  @@all = []
  attr_accessor :name

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
      song.artist = self
    end

    def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.new(name)
    end

    def self.find(name)
      self.all.find{|artist| artist.name == name}
    end

    def print_songs
      songs.each {|song| puts song.name}
    end

    
    # def add_song_by_name(song_name)
    #   song = Song.new(song_name)
    #   add_song(song)
    # end
    #
    # def self.song_count
    #   Song.all.count
    # end



end
