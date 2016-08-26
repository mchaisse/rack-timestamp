# Rack Timestamp Middleware

[![Build Status](https://travis-ci.org/mchaisse/rack-timestamp.svg?branch=master)](https://travis-ci.org/mchaisse/rack-timestamp) [![Dependency Status](https://gemnasium.com/badges/github.com/mchaisse/rack-timestamp.svg)](https://gemnasium.com/github.com/mchaisse/rack-timestamp) [![Code Climate](https://codeclimate.com/github/mchaisse/rack-timestamp.svg)](https://codeclimate.com/github/mchaisse/rack-timestamp)

`Rack::Timestamp` adds a timestamp to the Rack environment. By using this middleware at the top of the stack, it is usefull to **know exactly when the request has been processed by the server**. It will prevent `Time.now` to be spoiled by the execution time of the other middlewares and/or code within controllers/models/libs...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-timestamp', '~> 1.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-timestamp

## Usage

It is recommended to add the `Rack::Timestamp` middleware at the top of the stack in `config/application.rb`

```ruby
config.middleware.insert_before 0, Rack::Timestamp
```

Then in your app:

```ruby
puts env['rack.timestamp']
=> 1472194171.28057
```

## Running tests

To run tests:

    $ bundle exec rake spec

## Development

To install this gem for development purposes:

```shell
$ gem install bundler # note: you don't need to do this if you already have it installed
$ git clone git://github.com/mchaisse/rack-timestamp.git
$ cd rack-timestamp
$ bundle install
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mchaisse/rack-timestamp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

