require 'socket'

socket = TCPSocket.open("127.0.0.1", 3000)

puts "Starting the Client..................."
message = socket

Thread.new {
   loop{
      m = message.gets
      puts "Client typed this message: " + m
   }

}

loop{
  puts "Type a message: "
  a = gets
  puts "You typed: " + a

  message.puts a
}