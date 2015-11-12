if ARGV.empty?
  puts "Usage:\nruby #{__FILE__} your_key.jks"
  exit 1
end

file = ARGV[0]
if !File.exists?(file)
	puts "#{file} doesn't exists" 
	exit 1
end

if File.extname(file) != '.jks'
	puts "#{file} hasn't got a .jks extension"
	exit 1
end

cmd = "keytool -exportcert -list -v -keystore #{file} > key_exp_#{File.basename(file, '.jks')}.txt"
system cmd