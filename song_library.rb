def assert_equal(actual, expected)
  if expected == actual
    puts 'pass'
  else
    puts "fail: expected #{expected}, got #{actual}"
  end
end

def assert(statement)
  if statement
    puts 'pass'
  else
    puts "fail: expected #{statement} to be true."
  end
end


# define a two classes, Songs, which have names, and a Library, which has many songs.
class Song
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_accessor :songs
  def initialize
    @songs = []
  end
end

# Songs should be able to be initialized with a name.
begin
  assert_equal Song.new("Call Me Maybe").name, "Call Me Maybe"
rescue => e
  puts e
end

# # Add each of the following to a Library as Songs
song_names = [
  "Call Me Maybe",
  "Hit Me Baby One More Time",
  "Poker Face",
  "Call On Me"
]
#

begin
  songs = song_names.collect{|s| Song.new(s)}
  library = Library.new
  library.songs = songs
  assert_equal library.songs, songs
rescue => e
  puts e
end

def find_songs(library, song_name)
  library.songs.select { |song|
    song.name == song_name
  }
end

def search_songs(library, search_term)
  library.songs.select { |song|
    song.name.match(/\A#{search_term}/)
  }
end
#
# define a find_songs Method that will find a song by name.
# define a search_songs method that will search for a song that starts
# with the same 4 letters.

begin
  assert_equal find_songs(library, "Poker Face").first.name, "Poker Face"
rescue => e
  puts e
end

begin
  assert_equal search_songs(library, "Call").length, 2
  assert_equal search_songs(library, "Call").first.name, "Call Me Maybe"
rescue => e
  puts e
end