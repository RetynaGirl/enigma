require './test/test_helper'

class KeyGenTest < Minitest::Test
  def test_encryption_key
    assert_equal [3, 0, 19, 20], KeyGen.encryption_key('02715', '040895')
  end

  def test_make_keys
    assert_equal [2, 27, 71, 15], KeyGen.make_keys('02715')
  end

  def test_make_offsets
    assert_equal [1, 0, 2, 5], KeyGen.make_offsets('040895')
  end

  def test_decryption_key
    assert_equal [24, 0, 8, 7], KeyGen.decryption_key('02715', '040895')
  end
end
