#
# Cookbook Name:: ksplice
# Recipe:: default
#
# Copyright 2016, Mark McKinstry
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

include_recipe 'ksplice::repository'

package 'uptrack'

file '/etc/cron.d/uptrack' do
  action :delete
end

template '/etc/uptrack/uptrack.conf' do
  source 'uptrack.conf.erb'
  owner 'root'
  group 'root'
  mode '0640'
end

cron 'uptrack' do
  user 'root'
  command 'export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && [ -x /usr/sbin/uptrack-upgrade ] && /usr/sbin/uptrack-upgrade --cron'
  time :hourly
end
