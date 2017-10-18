require 'spin_r/version'
require 'spin_r/spinners'
require 'spin_r/spinner'

module SpinR
  def self.spin(spinner = nil, color = nil, &block)
    runner = SpinR::Spinner.new(spinner, color)
    runner.worker(&block)
  end
end
