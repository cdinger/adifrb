# ADIFrb

A rubygem to parse, manipulate, and manage [ADIF](https://adif.org/315/ADIF_315.htm) amateur radio logs and records.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "adif"
```

And then execute:

```
bundle install
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cdinger/adifrb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/cdinger/adifrb/blob/main/CODE_OF_CONDUCT.md).

## TODO

- make Record#uniqueness configurable, with examples (qsl.net has some fuzziness in the qso_start minute)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Adif project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/adif/blob/main/CODE_OF_CONDUCT.md).
