# 11.8b
puts "\n\#\# 11.8b \#\#\n\n"

# Adapted from 10.3.a shuffle algo

def shuffle directory
  song = directory[0]
  index = 0
  playlist = []

  while directory.length > 0
    # Generate a playlist seed each time
    Random.new_seed

    # Grab a song at random index in the directory
    song = directory[index]

    # Shuffle, floor of 0, ceiling of array length
    index = rand(0..directory.length)

    # If the object isn't nil
    if directory[index] != nil
      # Add to the array, delete the song from shuffle pool
      playlist << directory[index]
      directory.delete_at(index)
    end
  end
  playlist
end

# Playlist builder

# Get songs of various file formats
files  = Dir["./music/*.{MP3,mp3,OGG,ogg,FLAC,flac,WAV,wav,AAC,aac}"]

# Create a shuffled playlist
playlist = shuffle(files)

# Save the playlist to playlist.m3u
file_name = "playlist.m3u"
file = File.new(file_name,"w+")
file.write(playlist)
file.close