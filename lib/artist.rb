class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
      @name = name
      @songs = []
      save
    end

    def self.all
      @@all
    end

    def songs
      @songs
    end

    def add_song(song)
      @songs << song
      songs
    end

    def save
      @@all << self
    end

    def self.find_or_create_by_name(name)
      search_result = self.all.find {|p| p.name == name}
        if search_result then
          return search_result
        else
        new_artist = self.new(name)
      end
    end

    def print_songs
      @songs.each { |song| puts song.name }

    end
end
