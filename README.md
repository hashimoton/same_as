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

Returns true if either of each corresponding strings in self and the other array
includes the other from the first character.
Returns false if otherwise.


## Development

### Test

Run the test script in test directory.

```
$ cd test
$ ruby test_same_as.rb
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hashimoton/same_as. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

