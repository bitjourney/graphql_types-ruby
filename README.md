# GraphqlTypes

[![Build Status](https://travis-ci.org/bitjourney/graphql_types-ruby.svg?branch=master)](https://travis-ci.org/bitjourney/graphql_types-ruby) [![Gem Version](https://badge.fury.io/rb/graphql_types.svg)](https://badge.fury.io/rb/graphql_types)


This gem provides scalar types that GraphQL core does not have:

* `GraphqlTypes::AnyType` as dynamically-typed objects
* `GraphqlTypes::DateType` as `Date`
* `GraphqlTypes::BigIntType` as `BigInt`

This is created on `graphql-ruby`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'graphql_types'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql_types

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bitjourney/graphql_types.

## Copyright

Copyright (c) 2017 FUJI goro (@gfx) and Bit Journey, Inc.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
