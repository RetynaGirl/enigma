# frozen_string_literal: true

# Creates encryption and decryption keys
class KeyGen
  def self.encrypt(key, date)
    keys = make_keys(key)
    offsets = make_offsets(date)
    keys.map.with_index { |key, idx| key + offsets[idx].to_i }
  end

  def self.make_keys(key)
    key.split('')[0..-2].map.with_index do |digit, idx|
      (digit + key[idx + 1]).to_i
    end
  end
end
