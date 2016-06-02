CarrierWave.configure do |config|                       # required
    config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:  ENV['aws_access_key_id'],                        # required
    aws_secret_access_key: ENV[aws_secret_access_key],                        # required
    
  }
  config.fog_directory  = env ['fog_directory']                          # required
end
