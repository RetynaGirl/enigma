# frozen_string_literal: true

# Runs all code in order and stuff
class Enigma
  def decrypt(cyphertext, key, date)
    decryption_key = KeyGen.decryption_key(key, date)

    KeyApplier.apply_key(cyphertext, decryption_key)
  end

  def encrypt(message, key, date)
    encryption_key = KeyGen.encryption_key(key, date)

    KeyApplier.apply_key(message, encryption_key)
  end
end
