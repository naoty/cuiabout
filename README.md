# Cuiabout

CLI for cui-about.me (http://github.com/naoty/cui-aboutme)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cuiabout'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install cuiabout
```

## Usage

Print how to use this gem.

```sh
$ cuiabout help

Usage: cuiabout ACTION

  cuiabout [username]       # Prints user's profile
  cuiabout show [username]  # Prints user's profile
  cuiabout list             # Prints all user names
```

Print all user names.

```sh
$ cuiabout list
naoty
soplana
```

Print a specific user's profile.

```sh
$ cuiabout naoty
```

Signup with your name, password, and any other information.

```sh
$ cuiabout signup naoty email=naoty.k@gmail.com github=http://github.com/naoty
password:
Success!
```

Update your profile.

```sh
$ cuiabout update naoty blog=http://naoty.hatenablog.com location=Tokyo
password:
Success!
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
