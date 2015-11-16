require "rails/logstash_stdout/version"
require "rails/logstash_stdout/railtie" if defined?(Rails)

module Rails
  module LogstashStdout
    def self.set_logger(config)
      require 'lograge'
      require 'logstash-event'
      config.lograge.enabled = true
      config.lograge.logger = ActiveSupport::Logger.new(STDOUT)
      config.lograge.formatter = Lograge::Formatters::Logstash.new
      config.lograge.custom_options = lambda do |event|
        params = event.payload[:params].except('controller', 'action')
        { "params" => params.to_query }
      end
    end
  end
end
