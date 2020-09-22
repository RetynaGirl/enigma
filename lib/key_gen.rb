# frozen_string_literal: true

# Creates encryption and decryption keys
class KeyGen
  def self.encryption_key(key, date)
    keys = make_keys(key)
    offsets = make_offsets(date)
    keys.map.with_index do |key, idx|
      (key + offsets[idx]) % 27
    end
  end

  def self.make_keys(key)
    key.split('')[0..-2].map.with_index do |digit, idx|
      (digit + key[idx + 1]).to_i
    end
  end

  def self.make_offsets(date)
    (date.to_i**2).to_s.split('')[-4..-1].map(&:to_i)
  end

  def self.decryption_key(key, date)
    encryption_key(key, date).map { |offset| (27 - offset) % 27 }
  end
end
