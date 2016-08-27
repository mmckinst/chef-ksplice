#
# Cookbook Name:: ksplice
# Attributes:: default
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

default['config']['accesskey'] = 'INSERT_ACCESS_KEY'
default['config']['https_proxy'] = nil
default['config']['gconf_proxy_lookup'] = 'no'
default['config']['ssl_ca_cert_file'] = nil
default['config']['ssl_ca_cert_dir'] = nil
default['config']['update_repo_url'] = nil
default['config']['install_on_reboot'] = 'yes'
default['config']['upgrade_on_reboot'] = 'yes'
default['config']['autoinstall'] = 'yes'
