module SpinR
  class Spinner
    COLORS = %i[
      black light_black red light_red green light_green yellow light_yellow blue light_blue magenta
      light_magenta cyan light_cyan white light_white default
    ].freeze

    def initialize(spinner = nil, color = nil)
      @spinner = spinner || SpinR::Spinners::TRADITIONAL
      @color = color
    end

    def worker(&block)
      with_spin(&block)
    end

    private

    def with_spin
      require 'colorize'
      chars  = @spinner.clone.dup
      thread = Thread.new { yield }

      while thread.alive?
        spin_text = " #{chars[0].bold}\r"
        spin_text = spin_text.send(@color.to_s) if COLORS.include? @color
        print spin_text
        sleep 0.1
        print "\b\b"
        chars.push chars.shift
      end

      thread.join
    end
  end
end
