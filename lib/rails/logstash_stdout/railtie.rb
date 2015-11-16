module Rails
  module LogstashStdout
    class Railtie < ::Rails::Railtie
      config.before_initialize do
        if ENV["LOGSTASH_STDOUT"] == '1'
          Rails::LogstashStdout.set_logger(config)
        end
      end
    end
  end
end
