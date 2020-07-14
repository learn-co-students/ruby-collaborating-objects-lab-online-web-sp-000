require_relative 'artist' 
# require_relative 'mp3_importer' 

class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name=(artistName)
    @artist = Artist.find_or_create_by_name(artistName)
  end
  
  # describe '.new_by_filename' do
  #   it 'creates a new instance of a song from the file that\'s passed' do
  #     file_name = 'Michael Jackson - Black or White - pop.mp3'
  #     new_instance = Song.new_by_filename(file_name)
  #     expect(new_instance.name).to eq('Black or White')
  #   it 'associates new song instance with the artist from the filename' do
  #     Artist.class_variable_set("@@all",[])
  #     file_name = 'Michael Jackson - Black or White - pop.mp3'
  #     
  #   new_instance = Song.new_by_filename(file_name)
  #     expect(new_instance.artist.name).to eq('Michael Jackson')
  #     expect(Artist.all.size).to eq(1)
  #     expect(Artist.all.first.songs.empty?).to eq(false)
  
  def self.new_by_filename(fileName)
    fileArray = fileName.split(" - ")
    newSongObject = self.new(fileArray[1])
    newSongObject.artist = Artist.find_or_create_by_name(fileArray[0])
    newSongObject ## THIS IS VERY IMPORTANT TO RETURN ##
  end
  
  # def self.new_by_filename(filename)
  #   array = filename.split(" - ")
  #   new_song = self.new(array[1])
  #   new_song.artist_name = array[0]
  #   new_song
  # end


end


# # newArtist2 = Artist.new("bortles")
# newsong1 = Song.new("sone1")
# newsong2 = Song.new("sone2")

# # # newArtist.add_song(newsong1)
# # # newArtist.add_song(newsong2)
# # # print newsong1
# # # print newsong2
# # array = []
# # Artist.all.each {|i| array.push(i.name)}
# # print array

# newsong1.artist_name=("Michael Jackson")
# newsong2.artist_name=("Michael Jackson")
# print Artist.all
