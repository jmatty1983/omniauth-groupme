# Omniauth::Groupme

This gem is an OmniAuth 1.0 Strategy for authenticating with the [GroupMe v3 API](https://dev.groupme.com/docs/v3)

## Setup

Register your application with [GroupMe](https://dev.groupme.com/applications).

*Important*: your callback URL needs to be specified as `http://[hostname]/auth/groupme/callback`.

In order to authenticate with GroupMe in both development and production we recommend
registering a "-dev" app with GroupMe which points at localhost:3000.

## Usage

Get started by adding the GroupMe strategy to your `Gemfile`:

```ruby
gem 'omniauth-groupme', git: 'https://github.com/Bark-us/omniauth-groupme'
```

_Note: There's an old gem with the name `omniauth-groupme` that was targeted at
a previous version of the GroupMe API, so it's important to include the custom
git path when including the `omniauth-groupme` gem.

When you register your [API
application](https://dev.groupme.com/applications), you'll be provided a
`Redirect URL` that looks like:

```
https://oauth.groupme.com/oauth/authorize?client_id=special_client_id
```

The query string key `client_id` will be the client ID you need to specify in
the strategy below.

In a Rails app, add the GroupMe provider to your Omniauth middleware, e.g.
in a file like `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :groupme, ENV['GROUPME_CLIENT_ID']
end
```

In any Rack app you can add the Tumblr strategy like so:

```ruby
use OmniAuth::Builder do
  provider :groupme, ENV['GROUPME_CLIENT_ID']
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Bark-us/omniauth-groupme.

