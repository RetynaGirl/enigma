# frozen_string_literal: true

# Applies key hashes to incoming messages
class KeyApplier
  def self.apply_key(message, key)
    message.downcase.map.with_index do |character, idx|
      character.wrap_apply(character, key[idx % 4])
    end
  end
end
