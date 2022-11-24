# DataType [![Gem Version](https://badge.fury.io/rb/data_type.svg)](https://badge.fury.io/rb/data_type) ![Gem](https://img.shields.io/gem/dt/data_type)

A `DataType` class library. Defines an atomic data type. The `DataType` types are
`Numeric`, `TrueClass`, `FalseClass`, `Symbol`, and `NilClass`. Provides predicates
verifying classes and class instances are data types. 

## Installation

If using the gem as a developmental dependency, place the following in the gem
specification file:

```ruby
spec.add_development_dependency 'data_type', "~> 1"
```

Or, if using the gem at runtime:

```ruby
spec.add_runtime_dependency 'data_type', "~> 1"
```
Install the gem and add to the application's Gemfile by executing:

```bash
    $ bundle add data_type --version "~> 1"
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
    $ gem install data_type -v "~> 1"
```

## Usage

There are five public methods, all class methods. There is one private constant
containing the data types.

### Public 

#### `self.types()`

Reader method. Gets the data types stored in `TYPES`. Returns the array.

#### `self.instance?(object = nil)`

Predicate. Verifies an object is a data type instance. Takes any object as an
argument, and returns `true` in the case the argument is a `Numeric`, `FalseClass`,
`TrueClass`, `Symbol`, `TrueClass`, or `NilClass` class instance. `false` otherwise.

#### `self.type?(type = nil)`

Predicate. Verifies an identifier is a data type. Takes any identifier as an
argument, and returns `true` in the case the identifier's type is `Numeric`,
`FalseClass`, `TrueClass`, `Symbol`, or `NilClass`, or one of their ancestors. `false` otherwise.

#### `self.types_element?(type = nil)`

Predicate. Verifies an identifier exists in the `TYPES` array. Takes any
identifier as an argument, and returns `true` in the case the argument exists in
the array. Returns `false` otherwise.

#### `self.type_child?(type = nil)`

Predicate. Verifies an identifier is a `TYPES` element child. Takes any
identifier as an argument, and returns `true` in the case the identifier is a
`TYPES` element child. `false` otherwise.

### Private

#### `TYPES = [Numeric, FalseClass, TrueClass, Symbol, NilClass].freeze()`

An array containing the `DataType` data type constants.

## Development

After checking out the repository, run `bin/setup` to install dependencies.
Then, run `rake test` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and the created tag, and push the `.gem` file to
[rubygems.org](https:/rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/sci3nti5t/data_type. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the
[code_of_conduct](https://github.com/sci3nti5t/data_type/blob/main/CODE_OF_CONDUCT.md).

### Documentation errors

In the case there is a mistake in the documentation, private message sci3nti5t
and give:
* Mistake description
* Relevant line numbers

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Conduct code

Everyone interacting in the DataType project's codebases, issue trackers, chat
 rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/sci3nti5t/data_type/blob/main/CODE_OF_CONDUCT.md).
