require 'socket'

puts "Starting the Server..................."
server = TCPServer.open(3000) # Server would listen on port 3000
loop{                         # Servers run forever
   client_connection = server.accept # Establish client connect connection
   m = client_connection.gets

  puts "Client typed this message: " + m

   client_connection.puts(Time.now) # Send the time to the client
   client_connection.puts("Closing the connection with #{client_connection}")
   client_connection.close      # Disconnect from the client
   puts "Client disconnected <<<<<<< "
}