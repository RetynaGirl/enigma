# frozen_string_literal: true

require_relative './lib/enigma'

ciphertext = File.new(ARGV[0]).read

key = ARGV[2]
key = '0' + key while key.length < 5

decrypted = Enigma.new.decrypt(ciphertext, key, ARGV[3])

decrypted_file = File.new(ARGV[1], 'w')
decrypted_file.write(decrypted)
decrypted_file.close

puts "Created '#{ARGV[0]}' with the key #{ARGV[2]} and date #{ARGV[3]}"
