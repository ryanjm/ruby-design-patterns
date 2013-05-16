# Simple

class Logger

  def self.log(msg)
    @@log ||= File.open("log.txt", "a")
    @@log.puts(msg)
  end

end


Logger.log("message 1 - Logger")
Logger.log("message 2 - Logger")
Logger.log("message 3 - Logger")
Logger.log("message 4 - Logger")

# Using Ruby `singleton`
require 'singleton'

class Logger2
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
  end

  def log(msg)
    @log.puts(msg)
  end
end


puts Logger2.instance == Logger2.instance
Logger2.instance.log('message1 - Logger2')
Logger2.instance.log('message2 - Logger2')
Logger2.instance.log('message3 - Logger2')
