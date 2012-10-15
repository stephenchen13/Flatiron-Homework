# Build a Jukebox

# create a file jukebox.rb
while (1)
	songs = [
		"The Phoenix - 1901",
		"Tokyo Police Club - Wait Up",
		"Sufjan Stevens - Too Much",
		"The Naked and the Famous - Young Blood",
		"(Far From) Home - Tiga",
		"The Cults - Abducted",
		"The Phoenix - Consolation Prizes"
	]

	# When that program is run, it should introduce itself
	# to the user and accept input from the user using the gets command.
	puts "Welcome to the Jukebox. What would you like to do? (play, list, help, exit)"
	command, args = gets.split(" ", 2)

	# The jukebox should respond to 3 commands, help, play, list and exit.
	case command.downcase.strip
		when "play"
			song_to_play = args.downcase.strip
			# the play command should accept a song, either by number/index
			# or name. Once the user has indicated which song they want to
			# play, the jukebox should output 'Playing The Phoenix - 1901'
			# or whatever song name is important.
			names = songs.map { |song|
				song.split(" - ")[1].downcase	
			}
			index = names.index(song_to_play)
			if (index)
				puts "Playing #{songs[index]}"
			elsif song_to_play.match(/(\d+)/) && $1.to_i < songs.length
				puts "Playing #{songs[song_to_play.to_i]}"
			else
				puts "Sorry we don't have that song. Try [list] or [help] for more options."
			end
		when "list"
			# The list command should output a list of songs that the
			# user can play.
			songs.each_with_index do |song, i|
				puts "#{i}: #{song}"
			end
		when "help"
			# The help command should output instructions for the user
			# on how to use the jukebox.
			puts "Type [list] to see all the songs in the jukebox"
			puts "Type [play] [number/name] to play a song by it's name or number"
			puts "Type [exit] to stop the jukebox" 
		when "exit"
			# if the user types in exit, the jukebox should say goodbye
			# and the program should shut down.
			puts "Goodbye!"
			break
		else
			next
	end
end

