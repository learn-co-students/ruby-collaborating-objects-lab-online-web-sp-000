require_relative './artist.rb'
require_relative './mp3_importer.rb'
require 'pry'

class Song

    attr_accessor :name, :artist, :file

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        # DONE #parse filename 
        #create a new song instance using string from parsed filename
        #associate new song with the artist
        #return new song instance
        #Michael Jackson - Black or White - pop.mp3


        file_name = file.chomp('.mp3')
        file_info = file_name.split(' - ')
        self.new(file_info[1])
        self.artist = file_info[0]

    end

#     def artist_name=
#         #turn artists name from string TO Artist object
#     end
end