require './test/test_helper'

class KeyGenTest < Minitest::Test
  def test_encrypt
    assert_equal [3, 27, 73, 20], KeyGen.encrypt('02715', '040895')
  end

  def test_make_keys
    assert_equal [2, 27, 71, 15], KeyGen.make_keys('02715')
  end
end
