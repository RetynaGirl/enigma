# frozen_string_literal: true

require_relative './enigma'

ciphertext = File.new(ARGV[0]).read

decrypted = Enigma.new.decrypt(ciphertext, ARGV[2], ARGV[3])

File.new(ARGV[1]).write(decrypted)
