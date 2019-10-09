require 'socket'
require 'thread'

puts "Starting the Server..................."
server = TCPServer.open(3000) # Server would listen on port 3000

client_connection = server.accept # Establish client connect connection
Thread.new {
   loop{                         # Servers run forever
      m = client_connection.gets
      puts "Client typed this message: " + m
   }

}.join
Thread.new {
   loop{                         # Servers run forever
      puts "Type a message: "
      a = gets
      puts "You typed: " + a

      client_connection.puts a
   }

}.join
