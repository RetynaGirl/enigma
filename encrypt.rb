# frozen_string_literal: true

require_relative './lib/enigma'
require 'date'

message = File.new(ARGV[0]).read

key = rand(99_999).to_s
key = ' ' + key while key.length < 5

date = DateTime.now.strftime('%d%m%y')

encrypted = Enigma.new.encrypt(message, key, date)

encrypted_file = File.new(ARGV[1], 'w')
encrypted_file.write(encrypted)
encrypted_file.close

puts "Created '#{ARGV[0]}' with the key #{key} and date #{date}"
