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

In order to use this gem you must obtain an `app_id` from [Teespring](https://teespring.com/help). 

Create a client:

```ruby
client = Teespring::Client.new(app_id: "APP_ID_YOU_REQUESTED_FROM_TEESPRING")
```

Authenticate (this will create a new access token):

```ruby
token = client.authenticate("youremail@example.com", "yourpassword")
```

Alternatively, if you already have an access token you can create the client with the token directly:

```ruby
client = Teespring::Client.new(app_id: "APP_ID_YOU_REQUESTED_FROM_TEESPRING", access_token: "YOUR_ACCESS_TOKEN")
```

Once the client is authenticated you can retrieve information about the authenticated (via the access token) user:

```ruby
response = client.me
response.body
=> {"users"=>[{"id"=>12345, "email"=>"youremail@example.com"}]}

```

You can also retrieve a list of campaigns:

```ruby
response = client.campaigns(nil, "active")
```

Additional endpoints and details are available in the [Teespring Documentation](https://api.teespring.com/docs). Additional endpoints can be accessed directly through the `client.get` and `client.post` methods.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

* More Endpoints and response specific adapters
* Rate limiting
* Pagination
* Auto-pagination

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/teespring.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Disclaimer

This is not an official gem and is not created by Teespring.
