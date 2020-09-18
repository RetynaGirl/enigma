# frozen_string_literal: true

# Runs all code in order and stuff
class Enigma
  def decrypt(cyphertext, key, date)
    decryption_key = KeyGen.decryption_key(key, date)

    KeyApplier.call(cyphertext, decryption_key)
  end
end
