require 'socket'

socket = TCPSocket.open("192.168.43.119", 3000)

puts "Starting the Client..................."

message = socket
a = gets.chomp
message.puts a
puts message.gets
puts message.gets

puts "Closing the Client..................."
socket.close                    # Close the socket