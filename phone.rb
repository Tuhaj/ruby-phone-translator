require_relative 'phone_translator'

puts PhoneTranslator.new(ARGV[0]).decode
