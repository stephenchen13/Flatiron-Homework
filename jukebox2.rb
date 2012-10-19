class Jukebox
	attr_accessor :songs

	def load_songs(songs)
		@songs = songs
	end

	def list
		song_list = @songs.each_with_index.map do |song, i|
			"#{i+1}: #{song}"
		end		
		song_list.to_s
	end

	def play(song)
		return "Playing #{@songs[song.to_i]}" if (is_valid_index?(song.to_i))
		return "Playing #{@songs[index_of_song(song)]}" if has_song?(song.to_s)
		"Sorry we don't have that song"
	end

	def help
		<<-help 
		Type [list] to see all the songs in the jukebox
		Type [play] [number/name] to play a song by it's name or number
		Type [exit] to stop the jukebox
		help
	end

	def exit
		"Goodbye!"
	end

private
	def is_valid_index?(index)
		index > 0 && index < @songs.count
	end

	def has_song?(song)
		!index_of_song(song).nil?
	end

	def index_of_song(song)
		names = @songs.map { |song|
			song.split(" - ")[1].downcase
		}
		names.index(song.downcase)
	end
end

while (1)
	jukebox = Jukebox.new
	jukebox.songs = [
			"The Phoenix - 1901",
			"Tokyo Police Club - Wait Up",
			"Sufjan Stevens - Too Much",
			"The Naked and the Famous - Young Blood",
			"(Far From) Home - Tiga",
			"The Cults - Abducted",
			"The Phoenix - Consolation Prizes"
		]

	puts "Welcome to the Jukebox. What would you like to do? [play], [list], [help], [exit]"
	args = []
	command, arg = gets.split(" ", 2)
	args << arg.strip if !arg.empty?

	puts jukebox.send(command.downcase.strip, *args) if ["play", "list", "help", "exit"].include?(command.downcase.strip)
end
