module RubyEmitter

  def callbacks
    @callbacks ||= {}
  end

  def on(event, &callback)
    throw "Callback is required" unless callback
    callbacks[event] = callback
  end

  def trigger(event, *args)
    callbacks[event].call(*args)
  end

  alias :emit :trigger

  def off(event)
    callbacks.delete(event)
  end

end
