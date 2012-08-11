# Cuiabout

CLI for cui-about.me (http://github.com/naoty/cui-aboutme)

## Installation

Add this line to your application's Gemfile:

    gem 'cuiabout'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cuiabout

## Usage

Print how to use this gem.

    $ cuiabout help

    Usage: cuiabout ACTION

      cuiabout [username]       # Prints user's profile
      cuiabout show [username]  # Prints user's profile
      cuiabout list             # Prints all user names

Print all user names.

    $ cuiabout list
    naoty
    soplana

Print a specific user's profile.

    $ cuiabout naoty

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
