module Lampard
  def self.putsMyName
    puts 'My name is Lampard'
  end
#测试模块实例方法
  def print
    "#{self.class.name} \t(#{self.object_id}):#{self.to_s}"
  end
  @temp = '1234'
  def puts_temp
    puts "#{@temp}"
  end

#测试模块实例变量
   @name
   def name=(value)
    @name = value
    puts @name
   end
end

def noclass
  puts 'xxx'
end


