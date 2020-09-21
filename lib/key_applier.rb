# frozen_string_literal: true

# Applies key hashes to incoming messages
class KeyApplier
  @@ordered_characters = (97..122).map(&:chr).push(' ')

  def self.apply_key(message, key)
    message.downcase.split('').map.with_index do |character, idx|
      wrap_apply(character, key[idx % 4])
    end.join
  end

  def self.wrap_apply(character, offset)
    if @@ordered_characters.include?(character)
      @@ordered_characters[(@@ordered_characters.index(character) + offset) % 27]
    else
      character
    end
  end
end
