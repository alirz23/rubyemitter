module RubyEmitter

    def callbacks
        @callbacks ||= Hash.new { |h, k| h[k] = [] }
    end

    def on(event, &callback)
        throw "Callback is required" unless callback
        callbacks[event].push(callback)
    end

    def trigger(event, *args)
        callbacks[event].each { |cb| cb.call(*args) }
    end

    alias :emit :trigger

    def off(event)
        callbacks.delete(event)
    end

end
