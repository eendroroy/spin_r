require 'bundler/setup'
require 'spin_r'

def test_spinner(spinner, color, name)
  block = proc do
    sleep 1
    puts 'You spin my head right round! right round!'
    sleep 2
    puts 'When you go down!'
    sleep 3
    puts 'When you go down town!'
  end

  puts "SpinR::Spinners::#{name} Spinner"
  puts
  SpinR.spin(spinner, color, &block)
  puts
  puts
end

test_spinner SpinR::Spinners::TRADITIONAL, :black, 'TRADITIONAL'
test_spinner SpinR::Spinners::BLOCK,       :red, 'BLOCK'
test_spinner SpinR::Spinners::DOTTED_1,    :green, 'DOTTED_1'
test_spinner SpinR::Spinners::DOTTED_2,    :yellow, 'DOTTED_2'
test_spinner SpinR::Spinners::DOTTED_3,    :blue, 'DOTTED_3'
test_spinner SpinR::Spinners::DOTTED_4,    :magenta, 'DOTTED_4'
test_spinner SpinR::Spinners::WORLD,       :cyan, 'WORLD'
test_spinner SpinR::Spinners::TRIANGLE,    :white, 'TRIANGLE'
test_spinner SpinR::Spinners::EMOJI,       :default, 'EMOJI'
