class Song
  def initialize(long,songer,songname)
    @long = long
    @songer = songer
    @songname = songname
    @plays = 0
  end
  attr_reader :songer, :long
  attr_writer :long
  attr_accessor :songname
  def to_s
    "KS: #@songname -- #@long -- #@songer \n 
    #{@songname} -- #{@long} -- #{@songer}"
  end 
end

#测试实例化
#song = Song.new(12,'lampar','follow me')

#puts song.to_s

class KlokSong < Song
  def initialize(long,songer,songname,lyr)
    super(long,songer,songname) 
    @lyr = lyr
  end
  def to_s
    super + "#{@lyr}"
  end
end

# 测试继承
# ksong = KlokSong.new(10,'a','fl','Hahahahahaha')

# puts ksong.to_s


#测试读写属性
# song  = Song.new(10,'a','fl')

# song.long = 100

# song.songname = 'follow me my heart'

# puts song.songer
# puts song.long
# puts song.songname

class Song
  private_class_method :new
  @@song = nil
  def Song.create
    @@song = new(10,'a','fl') unless @@song
    @@song      
  end
  @@players = 0
  def play 
    @@players += 1
    @plays += 1
    puts "当前被播放 #{@plays} 总共播放 #{@@players}"
  end

  private
    def private_hello
      puts 'Hello'
    end
end 

song1 = Song.create
song2 = Song.create

song1.play
song2.play

song1.play
song2.play


def while_do
  for  i in 1..5
    if i < 5
      puts i
    end
  end
end

while_do

def loop_do
  i = 0
  loop do  
    i+=1
    next  if i < 1
    print i
    break if i >4
  end
end

loop_do

def read
  word = nil
  while word != 'exit'
    word = gets.chomp()
    puts word=="exit\n"
  end

end

read

