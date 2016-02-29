#
# Cookbook Name:: assgn
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.



group 'meals123'
user 'meals123' do
home '/home/meals123'
group 'meals123'
shell '/bin/bash'
end

package 'httpd' do
action :install
end
service 'httpd' do
action [:enable, :start]
end


file '/var/www/html/index.html' do
content '<html>
<body>
<h1>Food is ready!!!</h1>
</body>
</html>'
end

service 'iptables' do
action :stop
end


directory '/var/www/html/meals123/' do
owner 'meals123'
group 'meals123'
mode '0755'
action :create
end

directory '/var/www/html/meals123/Meals' do
owner 'meals123'
group 'meals123'
mode '0755'
action :create
end


directory '/var/www/html/meals123/Tiffins' do
owner 'meals123'
group 'meals123'
mode '0755'
action :create
end


remote_file '/var/www/html/meals123/Meals/Biryani.txt' do
source 'https://s3-sa-east-1.amazonaws.com/meals123/Meals/Biryani.txt'
owner 'meals123'
group 'meals123'
mode '0755'
action :create
end



remote_file '/var/www/html/meals123/Tiffins/Dosa.txt' do
source 'https://s3-sa-east-1.amazonaws.com/meals123/Tiffins/Dosa.txt'
owner 'meals123'
group 'meals123'
mode '0755'
action :create
end
