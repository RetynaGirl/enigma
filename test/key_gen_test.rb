require './test/test_helper'

class KeyGenTest < Minitest::Test
  def test_encrypt
    assert_equal [3, 0, 19, 20], KeyGen.encrypt('02715', '040895')
  end

  def test_make_keys
    assert_equal [2, 27, 71, 15], KeyGen.make_keys('02715')
  end

  def test_make_offsets
    assert_equal [1, 0, 2, 5], KeyGen.make_offsets('040895')
  end
end
