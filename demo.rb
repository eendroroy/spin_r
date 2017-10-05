require 'bundler/setup'
require 'spin_r'

def test_spinner(spinner, name)
  block = proc do
    sleep 1
    puts 'test line'
    sleep 2
    puts 'another test line'
    sleep 3
    puts 'yet another test line'
  end

  puts "SpinR::Spinners::#{name} Spinner"
  puts
  SpinR.spin(spinner, &block)
  puts
  puts
end

test_spinner SpinR::Spinners::TRADITIONAL, 'TRADITIONAL'
test_spinner SpinR::Spinners::BLOCK, 'BLOCK'
test_spinner SpinR::Spinners::DOTTED_1, 'DOTTED_1'
test_spinner SpinR::Spinners::DOTTED_2, 'DOTTED_2'
test_spinner SpinR::Spinners::DOTTED_3, 'DOTTED_3'
test_spinner SpinR::Spinners::DOTTED_4, 'DOTTED_4'
test_spinner SpinR::Spinners::WORLD, 'WORLD'
test_spinner SpinR::Spinners::TRIANGLE, 'TRIANGLE'
