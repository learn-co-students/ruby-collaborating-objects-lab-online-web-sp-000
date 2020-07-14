class Artist
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		save
	end

	def save
		if !@@all.include?(self)
		 	@@all << self
	 	end
	end

	def songs
		Song.all.select { |song| song.artist == self}
	end

	def add_song(song)
		song.artist = self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(artist)
		match = self.all.select { |instance| instance.name == artist}
		if match.empty?
			Artist.new(artist)
		else
				match[0]
		end
	end

	def print_songs
		puts self.songs.collect { |song| song.name }
	end
end