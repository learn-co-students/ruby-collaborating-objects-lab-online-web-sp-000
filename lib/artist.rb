class Artist
    attr_accessor :name 
    
    @@all = []

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

     def save
        self.class.all << self
      end
    
      def self.create
        song = Song.new
        song.save
        song
      end
    
      def self.new_by_name(song_name)
        song = self.new
        song.name = song_name
        song
      end
    
      def self.create_by_name(song_name)
        song = self.create
        song.name = song_name
        song
      end
    
      def self.find_by_name(song_name)
        self.all.detect{|s| s.name == song_name}
      end
    
      def self.find_or_create_by_name(song_name)
        self.find_by_name(song_name) || self.create_by_name(song_name)
      end
end 