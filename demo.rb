require 'bundler/setup'
require 'spin_r'

[
  '|/-\\',
  '⠂-–—–-',
  '◐◓◑◒',
  '◴◷◶◵',
  '◰◳◲◱',
  '▖▘▝▗',
  '■□▪▫',
  '▌▀▐▄',
  '▉▊▋▌▍▎▏▎▍▌▋▊▉',
  '▁▃▄▅▆▇█▇▆▅▄▃',
  '←↖↑↗→↘↓↙',
  '┤┘┴└├┌┬┐',
  '◢◣◤◥',
  '.oO°Oo.',
  '.oO@*',
  '🌍🌎🌏',
  '◡◡ ⊙⊙ ◠◠',
  '☱☲☴',
  '⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏',
  '⠋⠙⠚⠞⠖⠦⠴⠲⠳⠓',
  '⠄⠆⠇⠋⠙⠸⠰⠠⠰⠸⠙⠋⠇⠆',
  '⠋⠙⠚⠒⠂⠂⠒⠲⠴⠦⠖⠒⠐⠐⠒⠓⠋',
  '⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠴⠲⠒⠂⠂⠒⠚⠙⠉⠁',
  '⠈⠉⠋⠓⠒⠐⠐⠒⠖⠦⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈',
  '⠁⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈⠈',
  '⢄⢂⢁⡁⡈⡐⡠',
  '⢹⢺⢼⣸⣇⡧⡗⡏',
  '⣾⣽⣻⢿⡿⣟⣯⣷',
  '⠁⠂⠄⡀⢀⠠⠐⠈',
  '🌑🌒🌓🌔🌕🌝🌖🌗🌘🌚'
]

block = proc do
  sleep 1
  puts
  sleep 1
  puts 'Hi'
  sleep 1
end

# SpinR.spin(SpinR::Spinners::TRADITIONAL, &block)
# SpinR.spin(SpinR::Spinners::BLOCK, &block)
# SpinR.spin(SpinR::Spinners::DOTTED_1, &block)
# SpinR.spin(SpinR::Spinners::DOTTED_2, &block)
# SpinR.spin(SpinR::Spinners::DOTTED_3, &block)
# SpinR.spin(SpinR::Spinners::DOTTED_4, &block)
# SpinR.spin(SpinR::Spinners::WORLD, &block)
SpinR.spin(SpinR::Spinners::TRIANGLE, &block)
