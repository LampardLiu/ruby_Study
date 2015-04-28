class PracticeFile
  @file = nil
  def self.open_file
    @file = file = File.new('1.txt','r')
    begin
      file.each { |line| puts "#{file.lineno}:#{file.eof}\t#{line}" }
    rescue Exception => e
      puts e
    ensure
      file.close
    end    
  end

  def self.write_file value
    @file = file = File.new('1.txt','w')
    file.write(value)
    file.close
  end

  def self.puts_file value
    @file = file = File.new('1.txt','a')
    file.puts(value)
    file.close
  end
end

PracticeFile.open_file
#向文件中写内容
#PracticeFile.write_file gets

#向文件中写内容
PracticeFile.puts_file gets

File.open('1.txt','r+') do |f|
  f.each { |line| puts "#{line}"}
end

while line = gets
  puts line
end