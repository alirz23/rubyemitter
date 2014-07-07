require 'rubyemitter'
require 'pp'

class Server

  include RubyEmitter

  def run
    emit('accept')
  end

end

server = Server.new

server.on('accept') do
  puts 'a new request recieved'
end

server.run
