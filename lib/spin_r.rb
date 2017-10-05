require 'spin_r/version'
require 'spin_r/spinner'

module SpinR
  def self.spin(&block)
    puts 'Hi;'
    runner = SpinR::Spinner.new
    runner.worker &block
  end
end
