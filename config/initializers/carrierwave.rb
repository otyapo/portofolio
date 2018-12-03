# CarrierWave.configure do |config|
#   config.fog_provider = 'fog-aws'
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: 'AKIAISFLTYJQYVQQYZZQ',
#     aws_secret_access_key: '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',
#     region: 'ap-northeast-1'
#   }

#   config.fog_directory  = 'rails-audio-123'
#   config.cache_storage = "fog-aws"
# end



CarrierWave.configure do |config|
  config.fog_provider = 'fog-aws'
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAISFLTYJQYVQQYZZQ',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'ap-northeast-1',                  # optional, defaults to 'us-east-1'
    :host                   => 's3.example.com',             # optional, defaults to nil
    :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'rails-audio-123'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end