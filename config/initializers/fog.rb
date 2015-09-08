CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJGOPDFSRQ2OAVFTQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'sengche'   
end