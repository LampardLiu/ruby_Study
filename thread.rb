class ThreadClass  
  def create_n_thread value
    @threads = []
    value.times do |n|
      @threads << Thread.new(n) do |current_n|
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

puts thread.threads.length

thread.threads.each { |t| t.join }
