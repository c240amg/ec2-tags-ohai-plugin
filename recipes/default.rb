#
# Cookbook Name:: ec2-tags-ohai-plugin
# Recipe:: default
#
# Copyright 2016 The Authors
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

chef_gem 'aws-sdk-ec2' do
  version '1.371.0'
  compile_time true
end

ohai_plugin 'ec2-tags' do
  resource :template
  compile_time true
end
