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

And then execute:

    $ bundle
## Usage

Write a following line to your itamae recipe.

```
# recipe.rb

include_recipe "memocurial"
```

## Attributes

| Name                                          | Value    | Default              | Required     |
| -------------------------------------------   | -------- | -------------------- | ------------ |
| `[:memocurial][:port]`                        | Number   | 5000                 | No           |
| `[:memocurial][:data]`                        | String   | /var/lib/memocurial  | No           |
| `[:memocurial][:image]`                       | String   | f440/memocurial      | No           |

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/f440/itamae-plugin-recipe-memocurial.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

