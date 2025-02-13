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

remote_file '/tmp/vue-2048.tar.gz' do
  source 'https://github.com/aws-advanced-admin/vue-2048/releases/download/v1.0.0/vue-2048.tar.gz'
  checksum '64d8a5f15efe1c119ddf3e42b499b86c619a15c5af591b2d89edb6efbcc7cde6'
end

archive_file '/tmp/vue-2048.tar.gz' do
  destination '/usr/share/nginx/html'
  overwrite true
end
