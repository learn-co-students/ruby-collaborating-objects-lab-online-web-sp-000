class Artist
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        save 
        #Initializes an artist with a name and saves it to the array All
    end 

    def save
        @@all << self
        #Save command! Push self to all
    end 

    def self.all
        @@all 
        #Return the array of all Artist instances
    end 

    def name
        @name
        #Return the artist instance name
    end 

    def add_song(song)
        song.artist = self
        #Given a song, associates the song's artist variable with itself
    end 

    def songs
        Song.all.select {|song| song.artist == self}
        #Goes through all the Song instances and creates an array of all instances where the song's artist equals the Artist given
    end 

    def self.create_by_name(name)
        artist = self.new(name)
        #New instance of an artist by the artist name given 
        artist.name = name
        #Assigns the instance variable the proper name
        artist.save
        #Saves the artist to the All array
        artist
        #Returns the artist
    end 

    def self.find_by_name(name)
        @@all.find {|artist| artist.name == name}
        #Looks through the All array and returns the first instance of a searched-for name
    end 

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.create_by_name(name)
        #If find_by_name comes up empty, create_by_name
    end 

    def print_songs
        self.songs.each {|song| puts song.name}
        #Iterates through the songs array for any given artist and puts the song name.
        #Yes the song dot name part is important
    end 
end 