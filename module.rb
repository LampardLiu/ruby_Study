#require 不支持相对路径，如果需要相对路径需要通过File
#require  File.expand_path('../temp/module1',__FILE__)

load 'temp/module1.rb'

module Login
  MyName = "Lampard"
  def self.putsMyName
    puts "Lmaprd"
  end

  def putsMyName
    puts Login::MyName
  end

  class LoginWeb
    def self.login
      puts self.class
    end
  end
end


# Login.putsMyName
# puts Login::MyName

# Login::LoginWeb.login
# loginweb = Login::LoginWeb.new
# puts loginweb.class

class SuperClass
  include Login
end

SuperClass.new.putsMyName
Lampard.putsMyName

def aa
  puts 'AA'
end
aa

#不会调用另外一个文件中没有放在类或者module的方法
noclass