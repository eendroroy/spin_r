module SpinR
  class Spinner
    def initialize(spinner = nil)
      @spinner = spinner || SpinR::Spinners::TRADITIONAL
    end

    def worker(&block)
      with_spin(&block)
    end

    private

    def with_spin
      chars  = @spinner.clone.dup
      thread = Thread.new { yield }

      while thread.alive?
        print "#{chars[0]}\r"
        sleep 0.1

        chars.push chars.shift
      end

      thread.join
    end
  end
end
