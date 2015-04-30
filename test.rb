require  File.expand_path('../thread',__FILE__)
require  'minitest/autorun'

class TestThreadClass < Minitest::Test
  def test_thread
    thread = ThreadClass.new
    thread.create_n_thread 5
    assert_equal(6,thread.threads.length)
  end

  def test_qw
    assert_nil(5,msg = nil)
  end
end
