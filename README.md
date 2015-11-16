# Rails Logstash STDOUT

Uses lograge and logstash-event gems to output all app logs in logstash format to STDOUT instead of rails log files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-logstash_stdout', github: 'instedd/rails-logstash_stdout'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-logstash_stdout

## Usage

Either set the environment variable `LOGSTASH_STDOUT` to `1` for the logger to be configured in the application, or manually invoke `Rails::LogstashStdout.set_logger(config)` during your app config phase.
