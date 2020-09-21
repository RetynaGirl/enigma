require './test/test_helper'

class KeyApplierTest < Minitest::Test
  def test_apply_key
    assert_equal 'keder ohulw', KeyApplier.apply_key('hello world', [3, 0, 19, 20])
  end
end
