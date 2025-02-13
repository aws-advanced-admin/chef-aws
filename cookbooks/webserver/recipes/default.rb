#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content '<h1>Hola ke ase</h1>'
  mode '0644'
  owner 'root'
  group 'root'
end
