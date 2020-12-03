if Rails.env.test?
  redis_config = YAML.load(File.open(Rails.root.join('config/redis.yml'))).symbolize_keys[Rails.env.to_sym]

  $redis = Redis.new(redis_config)
else
  $redis = Redis.new(url: ENV['REDIS_URL'])
end
