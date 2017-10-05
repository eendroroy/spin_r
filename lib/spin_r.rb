require 'spin_r/version'
require 'spin_r/spinners'
require 'spin_r/spinner'

module SpinR
  def self.spin(spinner = nil, &block)
    runner = SpinR::Spinner.new(spinner)
    runner.worker(&block)
  end
end
