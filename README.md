# SpinR

[![GitHub tag](https://img.shields.io/github/tag/eendroroy/spin_r.svg)](https://github.com/eendroroy/spin_r)
[![Gem Version](https://badge.fury.io/rb/spin_r.svg)](https://rubygems.org/gems/spin_r)
[![Downloads](https://img.shields.io/gem/dt/spin_r.svg)](https://rubygems.org/gems/spin_r)
[![Contributors](https://img.shields.io/github/contributors/eendroroy/spin_r.svg)](CONTRIBUTORS.md)


Show any time consuming process's output with a spinner.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spin_r'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spin_r

## Usage

```ruby
SpinR.spin do
  sleep 4
  puts 'You spin my head right round!'
end
```

Define spinner style:

```ruby
SpinR.spin SpinR::Spinners::TRIANGLE do
  sleep 4
  puts 'You spin my head right round!'
end
```

Available spinners:

- SpinR::Spinners::TRADITIONAL
- SpinR::Spinners::BLOCK
- SpinR::Spinners::DOTTED_1
- SpinR::Spinners::DOTTED_2
- SpinR::Spinners::DOTTED_3
- SpinR::Spinners::DOTTED_4
- SpinR::Spinners::WORLD
- SpinR::Spinners::TRIANGLE

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eendroroy/spin_r. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SpinR project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/eendroroy/spin_r/blob/master/CODE_OF_CONDUCT.md).
