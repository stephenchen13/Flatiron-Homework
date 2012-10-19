class Jukebox
	attr_reader :songs
	def initialize
		@songs = [
			"The Phoenix - 1901",
			"Tokyo Police Club - Wait Up",
			"Sufjan Stevens - Too Much",
			"The Naked and the Famous - Young Blood",
			"(Far From) Home - Tiga",
			"The Cults - Abducted",
			"The Phoenix - Consolation Prizes"
		]
	end

	def start
		while (1)
			puts "Welcome to the Jukebox. What would you like to do? [play], [list], [help], [exit]"
			command, args = gets.split(" ", 2)

			case command.downcase.strip
				when "play"
					if (args.match(/^\d+$/))
						puts play_by_index(args.strip.to_i)
					else
						puts play_by_name(args.strip)
					end
				when "list"
					puts list
				when "help"
					puts help
				when "exit"
					puts exit
					break
				else
					puts "Unrecognized command"
					next
			end
		end
	end

	def list
		song_list = @songs.each_with_index.map do |song, i|
			"#{i}: #{song}"
		end		
		song_list.to_s
	end

	def play(song)
		return "Playing #{@songs[song]}" if song.is_a?(Integer) && (is_valid_index?(song.to_i))
		return "Playing #{@songs[index_of_song(song)]}" if has_song?(song.to_s)
		"Sorry we don't have that song"
	end

	def play_by_name(song)
		return "Playing #{@songs[index_of_song(song)]}" if has_song?(song)
		"Sorry we don't have that song"
	end

	def play_by_index(song)
		return "Playing #{@songs[song]}" if is_valid_index?(song.to_i)
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

# while (1)
# 	jukebox = Jukebox.new

# 	puts "Welcome to the Jukebox. What would you like to do? [play], [list], [help], [exit]"
# 	args = []
# 	command, arg = gets.split(" ", 2)
# 	args << arg.strip if !arg.empty?

# 	puts jukebox.send(command.downcase.strip, *args)
# end

jukebox = Jukebox.new
jukebox.start
