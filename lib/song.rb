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
        artist_name = file_array[0]
        name = file_array[1]
        #Assigning variable names to each part of the array
        self.new(name)
        #self.artist_name = artist_name
   end 

   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #Theoretically should create an artist instance based on the name?
    binding.pry
   end 
end 