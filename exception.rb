class Song
  @song_name;  @song_time;  @singer
  attr_accessor :song_time, :song_name, :singer

  def get_song_time type
    i = 0
    begin
      throw :myerror
      #throw Exception.new type
      raise ThreadError, 'type', caller
      #raise
      time = case type
      when '1' then @song_time.to_i/60.00
      else @song_time
    end
    rescue Exception => e
      i += 1
      p i
      retry unless i==5
      e.class
    end    
  end
end

catch :myerror do
puts 'this is myerror'
end

song = Song.new
puts '请输入歌曲名称：'
song.song_name = gets.chomp
puts '请输入歌曲时间：'
song.song_time = gets.chomp

puts 'song time type: 1 minutes other socend'

puts song.get_song_time(gets.chomp)
