class ThreadClass  
  def create_n_thread value
    @threads = []
    value.times do |n|
      @threads << Thread.new do |current_n|
        Thread.stop
        puts "\n #{Thread.current}:#{n}"
      end
    end
  end

  def threads
    @threads
  end
end

thread = ThreadClass.new
thread.create_n_thread 5

#puts thread.threads.length

thread.threads.each { |t| t.run }

