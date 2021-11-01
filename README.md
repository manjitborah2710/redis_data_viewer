# RedisDataViewer
A gem that lets you see redis data in your rails application. It helps you view the data in your redis in a readonly mode. This prevents accidental changes in your datastore.

Visit the [Homepage](https://manjitborah2710.github.io/redis_data_viewer/)

## Usage
How to use my plugin.

- Open you rails app and go to the path /redis. In the UI, enter the db and key to search for and hit fetch.

!['image not found'](https://github.com/manjitborah2710/redis_data_viewer/blob/8783c45be6a7e5c0ff0683d2fb9d3f79953c6ca8/images/sample.png)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'redis_data_viewer'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install redis_data_viewer
```

Execute the following in your rails app root directory
```bash
rails g redis_data_viewer install
```

Visit this to get a sample configuration that needs to be added to config/initializers/redis_data_viewer.rb in your rails application
https://gist.github.com/manjitborah2710/80042165479c512c61d21984c25c6bf6
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


### Planned for future release
- Able to configure multiple redis hosts rather than one