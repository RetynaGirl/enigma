require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    KeyGen.stubs(:decryption_key).returns('a')
    KeyGen.stubs(:encryption_key).returns('b')
    KeyApplier.stubs(:apply_key).returns('applied message')
    @enigma = Enigma.new
  end

  def test_decrypt
    assert_equal 'applied_message', @enigma.decrypt('foo', :key, :date)
  end

  def test_encrypt
    assert_equal 'applied_message', @enigma.encrypt
  end
end
