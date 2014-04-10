require 'test/unit'
require_relative 'simple_script'

class MyTest < Test::Unit::TestCase

  # def setup
  # end
  
  # def teardown
  # end
  
  def test_add_2_2
    assert_equal(4, my_add(2, 2))
  end

  def test_add_14_2_2
    assert_equal(16.2, my_add(14.2, 2))
  end

  # def test_add_with_strings
  # 	assert_raise( TypeError ) { my_add("a", 2) }
  # end


end
