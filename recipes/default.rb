#
# Cookbook Name:: test-kitchen-example
# Recipe:: default
#
# Copyright 2013, Blue Box Group, LLC
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

user node.example.user

template "/tmp/example.conf" do
  source "example_conf.erb"
  owner node.example.user
  group node.example.user
  mode 00644
end

directory node.example.log_dir do
  owner node.example.user
  group node.example.user
  recursive true
end

