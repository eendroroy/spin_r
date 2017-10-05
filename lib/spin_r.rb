require 'spin_r/version'
require 'spin_r/spinner'

def Spin(text = nil, &block)
  runner = SpinR::Spinner.new
  runner.worker text, &block
end
