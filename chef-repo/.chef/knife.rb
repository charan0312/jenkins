# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "willy123"
client_key               "#{current_dir}/willy123.pem"
validation_client_name   "willy-validator"
validation_key           "#{current_dir}/willy-validator.pem"
chef_server_url          "https://ec2-54-94-154-168.sa-east-1.compute.amazonaws.com/organizations/willy"
cookbook_path            ["#{current_dir}/../cookbooks"]
