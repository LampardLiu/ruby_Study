#require 不支持相对路径，如果需要相对路径需要通过File
#require  File.expand_path('../temp/module1',__FILE__)

load 'module1.rb'

#调用另外一个文件的方法
noclass

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
  include Lampard
  #测试模块实例变量
  @name
  def name=(value)
    @name = "#{value}XXX"
    puts @name
  end

  def puts_name
    puts @name
  end
end

class LowerClass
  include Lampard
  def initialize
    @temp = 4567
  end  
end
#测试extend
class ExtendClass
  extend Lampard
end


# SuperClass.new.putsMyName
# Lampard.putsMyName

#测试
superclass = SuperClass.new 
lowerclass = LowerClass.new 

# puts superclass.print
# puts lowerclass.print

# superclass.name= 'DaShaBi'
# superclass.name='XiaoShaBi'
# superclass.puts_name

lowerclass.puts_temp

puts ExtendClass.print


