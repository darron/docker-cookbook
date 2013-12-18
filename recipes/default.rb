# encoding: utf-8
#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright (C) 2013, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

apt_repository 'docker' do
  uri node['docker']['package']['repo_url']
  distribution node['docker']['package']['distribution']
  components ['main']
  key node['docker']['package']['repo_key']
end

package 'lxc-docker'

service 'docker' do
  provider Chef::Provider::Service::Upstart
  action [:enable, :stop]
end

remote_file node['docker']['upstart_file_path'] do
  source node['docker']['upstart_file']
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

service 'docker' do
  provider Chef::Provider::Service::Upstart
  action [:start]
end