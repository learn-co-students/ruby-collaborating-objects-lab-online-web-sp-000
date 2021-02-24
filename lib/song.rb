require_relative './artist.rb'
require_relative './mp3_importer.rb'
require 'pry'

class Song

    attr_accessor :name, :artist, :file

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        # DONE #parse filename 
        #DONE create a new song instance using string from parsed filename
        #associate new song with the artist
        #return new song instance
        #Michael Jackson - Black or White - pop.mp3


        file_name = file.chomp('.mp3')
        file_info = file_name.split(' - ')
        #["Michael Jackson", "Black or White", "pop"]
        new_song = self.new(file_info[1])
        new_song.artist_name=(file_info[0])

        new_song
    end

    def artist_name=(name)
        #turn artists name from string TO Artist object
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end