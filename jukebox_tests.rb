require "./jukebox2.rb"
require "test/unit"

class TestJukebox < Test::Unit::TestCase
	def setup 
		@jukebox = Jukebox.new
	end

	def test_jukebox_can_play_a_song_by_index
		assert_equal "Playing Tokyo Police Club - Wait Up", @jukebox.play(1)
	end

	def test_jukebox_can_only_play_songs_it_has
		assert_match /Sorry we don't have that song/, @jukebox.play(20)
		assert_match /Sorry we don't have that song/, @jukebox.play("Big Pimpin")
	end

	def test_jukebox_can_play_a_song_by_name
		assert_equal "Playing The Phoenix - 1901", @jukebox.play("1901")
	end

	def test_jukebox_can_list_songs
		list = @jukebox.list
		assert_match /The Phoenix/, list
		assert_match /Wait Up/, list
		assert_match /Too Much/, list
		assert_match /Young Blood/, list
		assert_match /Tiga/, list
		assert_match /Abducted/, list
		assert_match /Consolation Prizes/, list
	end

	def test_jukebox_can_exit
		assert_equal "Goodbye!", @jukebox.exit
	end

	def test_jukebox_responds_to_help
		assert_match /Type/, @jukebox.help
	end
end