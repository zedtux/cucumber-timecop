# Cucumber Timecop gem

This gem install [timecop](https://github.com/travisjeffery/timecop) and [chronic](https://github.com/mojombo/chronic) gems and also include a cucumber step definition to use Timecop in you features.

## Installation

Add this line to your application's Gemfile:

    gem 'cucumber-timecop', :require => false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cucumber-timecop

## Usage

Add the following line to the features/support/env.rb:

    require 'cucumber/timecop'

When this gem is installed, you can use the following cucumber steps:

    Given it is currently 2 days ago
    Given time is frozen at midnight
    Given I jump in our Delorean and return to the present

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
