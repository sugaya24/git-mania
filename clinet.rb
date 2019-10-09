require 'socket'

socket = TCPSocket.open("localhost", 3000)

puts "Starting the Client..................."

message = socket
a = gets.chomp
message.puts a
puts message.chomp

puts "Closing the Client..................."
socket.close                    # Close the socket