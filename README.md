# SameAs

SameAs appends an extensible comparison method for Array.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'same_as'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install same_as

## Usage

In your ruby source, write the line below:

```ruby
require 'same_as'
```

Then the instance methods from this gem are appended to Array.

### Array#same_as?(other_ary)

Returns true if each element in self is equal to corresponding element
in the other array, with the comparison method given in the block.
Returns false otherwise.
With no block, compares the elements using "==."

### same_prefix?(other_ary)

Returns true if the strings of both elements in self and the other array
start with a same string.
Returns false if otherwise.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/same_as. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

