# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
# create Song class that has two arguemtns:title, artisit (string)
# 
# create Playlist class 


# Initial Solution
class Song
  def initialize(song, artist)
    @song = song
    @artist = artist
  end
  def play
    puts "Now playing: #{@song} by #{@artist}"
  end

end

class Playlist
  def initialize(*song)
    @tracks = song 
  end
  def add(*new)
    @new = new
    @new.each do |x|
      @tracks << x
    end
  end
  def num_of_tracks
    @tracks.length
  end
  def play
    first_track = @track[0]
    p "Playing: "
  end
  def remove(delete)
    @delete = delete
  end
  
  def includes?(songs)
    if @tracks.include? songs
      return true
    else
      return false
    end
  end
  
  def play_all
  end
  def display
  end
end





# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

#reflection
# What concepts did you review in this challenge?
# i reviewed iterations, classes, splat, class variable, instance variables
# What is still confusing to you about Ruby?
# i think my understanding of classes can use some work.
# What are you going to study to get more prepared for Phase 1?
# I am going to study ruby and css more for phase1