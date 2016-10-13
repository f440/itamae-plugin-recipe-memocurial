# Itamae::Plugin::Recipe::Memocurial

Itamae plugin to install [Memocurial](https://bitbucket.org/troter/memocurial)

## Supported Platforms

- Ubuntu 16.04

## Installation

Add this line to your application's Gemfile:

```ruby
gem "itamae-plugin-recipe-memocurial",
  git: "https://github.com/f440/itamae-plugin-recipe-memocurial.git"
```

Execute it with: itamae ssh -h ... recipe.rb.

And then execute:

    $ bundle

## Usage

Write a following line to your itamae recipe.

```
# recipe.rb

include_recipe "memocurial"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/f440/itamae-plugin-recipe-memocurial.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

