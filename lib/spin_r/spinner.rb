module SpinR
  class Spinner
    def initialize
      require 'stringio'

      @stdout_bak = $stdout
      $stdout = StringIO.new
    end

    def worker(text = nil, &block)
      titled text do
        spin &block
      end
    ensure
      $stdout = @stdout_bak
    end

    private

    def titled(text = nil)
      print "#{text}... " unless text.nil?
      @stdout_bak.print text
      yield
    end

    def spin
      chars  = %w[| / - \\ ]
      thread = Thread.new { yield }

      while thread.alive?
        @stdout_bak.print chars[0]
        sleep 0.1
        @stdout_bak.print "\b"

        chars.push chars.shift
      end

      thread.join
    end
  end
end