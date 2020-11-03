class Artist
	attr_accessor :name

	@@all = []

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		@@all.find{|artist| artist.name == name} || new(name)
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def add_song(song)
		song.artist = self
	end

	def songs
		Song.all.filter{|song| song.artist == self}
	end

	def print_songs
		songs.each{|song| puts song.name}
	end
end
