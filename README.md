# Teespring

Interact with the Teespring Seller and Buyer APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'teespring'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install teespring

## Usage

In order to use this gem you must obtain an `app_id` from [Teespring](https://teespring.com/support). 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

* `Teespring.authenticate` (email, password, uid)
* `Teespring.configure` (access_token)
* `Teespring::Client`
* Campaigns
* Rate limiting
* Pagination
* Auto-pagination

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/teespring.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Disclaimer

This is not an official gem and is not created by Teespring.
