
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the folowing commands: \n
    - help : displays this help message \n
    - list : displays a list of songs you can play \n 
    - play : lets you choose a songs to play \n 
    - exit : exits this program
  "
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  valid = false
  puts "Please enter a song name or number\n"
  user_song = gets.chomp
  songs.each_with_index do |song, i|
    if user_song == song
      puts song
      valid = true 
    elsif user_song.to_i == i + 1
      puts song
      valid = true
    end
  end
  if valid == false
    puts "Invalid input, please try again\n"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  puts "Please enter a command:"
  user_input = gets.strip
  while true
    if user_input == "list"
      list(songs)
      user_input = gets.strip
    elsif user_input == "play"
      play(songs)
      user_input = gets.strip
    elsif user_input == "help"
      help
      user_input = gets.strip
    elsif user_input == "exit"
      exit_jukebox
      break
    end
  end
  
end