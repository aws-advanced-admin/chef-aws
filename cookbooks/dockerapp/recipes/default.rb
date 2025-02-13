#
# Cookbook:: dockerapp
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.
package 'docker' do
  action :install
end

service 'docker' do
  action [:start, :enable]
end

docker_image 'javierrgz/vue-2048' do
  tag 'latest'
  action :pull
end

docker_container 'vue-2048' do
  repo 'javierrgz/vue-2048'
  port [ '80:80' ]
  restart_policy 'unless-stopped'
  action :run
end
