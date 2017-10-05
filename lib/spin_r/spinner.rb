module SpinR
  class Spinner
    def initialize
    end

    def worker(&block)
      with_spin &block
    end

    private

    def with_spin
      chars  = %w[| / - \\ ]
      thread = Thread.new { yield }

      while thread.alive?
        print "#{chars[0]}\b"
        sleep 0.1

        chars.push chars.shift
      end

      thread.join
    end
  end
end
