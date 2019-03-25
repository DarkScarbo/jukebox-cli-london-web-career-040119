require = "pry"
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
  puts "I accept the following commands:/n
- help : displays this help message/n
- list : displays a list of songs you can play/n
- play : lets you choose a song to play/n
- exit : exits this program"
end
  
def list (songs)
  songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
end

def play (songs)
  puts "Please enter a song name or number:"
  ans = gets.chomp
  if ans.to_i.between?(1,9)
    puts "Playing #{songs[ans.to_i - 1]}"
  elsif songs.include?(ans)
    puts "Playing #{ans}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
    loop do
    puts "Please enter a command:"
    ans = gets.chomp

    case ans
    when "help"
      help
    when "play"
      play
    when "list"
      list
    when "exit"
      exit_jukebox
      break
    else
      invalid_command
    end
  end
end
