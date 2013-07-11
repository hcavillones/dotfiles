log_level                :info
log_location             STDOUT
node_name                'hcavillones-remote'
client_key               '/Users/hcavillones/.chef/hcavillones-remote.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef/validation.pem'
chef_server_url          'http://chef:4000'
cache_type               'BasicFile'
cache_options( :path => '/Users/hcavillones/.chef/checksums' )
cookbook_path [ '~/chef-repo/cookbooks', '~/chef-repo/site-cookbooks' ]
