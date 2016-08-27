#
# Cookbook Name:: ksplice
# Recipe:: repository
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

case node['platform_family']
when 'rhel'

  short_name = if node['platform'] == 'oracle'
                 'ol'
               elsif node['platform'] == 'redhat'
                 'rhel'
               else
                 node['platform'].downcase
               end

  yum_repository 'ksplice-uptrack' do
    description 'Ksplice Uptrack'
    baseurl "http://www.ksplice.com/yum/uptrack/#{short_name}/$releasever/$basearch/"
    gpgkey 'https://www.ksplice.com/yum/RPM-GPG-KEY-ksplice'
    gpgcheck true
  end
when 'debian'
  apt_repository 'ksplice-uptrack' do
    uri 'http://www.ksplice.com/apt/'
    distribution node['lsb']['codename']
    components ['ksplice']
    key 'https://www.ksplice.com/apt/ksplice-archive.asc'
  end
end
