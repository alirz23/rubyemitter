$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubyemitter'

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

server.on('accept') do
  puts 'another request'
end

server.run
