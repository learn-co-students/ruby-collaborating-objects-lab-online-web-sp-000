require "pry"

class Song
    attr_accessor :name, :artist

    @@all = []

   def initialize(name)
    @name = name
    save
    #Initializes a Song with a name and saves it to the array All.
   end

   def self.artist
    @artist
    #Creates song.artist to show the Artist instance linked to the song.
   end 

   def save
    @@all << self
    #Puts the Song instance into the All array of all songs.
   end 

   def self.all
    @@all
    #Returns all the Song instances
   end 

   def self.new_by_filename(file)
        file_array = file.gsub(".mp3", "").split(" - ")
        #Gsub is better than delete, takes two arguments, first one the material to delete, second 
        artist = file_array[0]
        name = file_array[1]
        #Assigning variable names to each part of the array
        song = self.new(name)
        #New instance of Song by the name given from the file
        song.artist_name = artist
        #Since artist_name= is an instance variable, you need to call it on an instance
        #Meaning that self.new can't just exist, it needs to be song = 
        song
        #Return the song instance you just created
        #binding.pry
   end 

   def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name).add_song(self)
     #Theoretically should create an artist instance based on the name?
     #And save the song to that artist's songs array thingie.
     end 
end 