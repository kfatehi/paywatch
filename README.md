# Paywatch

watch activity to determine hours worked per project

## Architecture
```
                                 +-----------+
       +-----configure-----------+Sinatra/Api+-----------------+
       |                         +-+------+--+                 |
       |                           |      |                    |
    +--+----------------+          |      |                    |
    |Project YML Configs|          |    export                 |
    +---------------+---+          |    project                |
                    |              |      |                    |
      +-------------+---+          |    +-+-----------+-----+  |
   +--+Paywatch::Watcher+---start--+    | Paywatch::Exporter|  |
   |  +-----------------+               +-+---+----------+--+  |
   |                                      |   |          |     |
logging          global idle timer        |   |     calculate  |
   |                                      |   |      overtime  |
   |                                      |   |                |
  ++----------------+                     |   |                |
  |Project Hours CSV+---------------------+   |                |
  +-----------------+                         |                |
                                              |                |
                                              |                |
                                           generate            |
                                              |                |
                                              |                |
                                         +----+------+         |
                                         |PDF Report +---------+
                                         +-----------+
```

## Installation

Add this line to your application's Gemfile:

    gem 'paywatch'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paywatch

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
