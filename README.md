# ksplice Cookbook

This cookbook installs and manages [ksplice](https://www.ksplice.com/).

## Requirements

### Platforms

- CentOS
- RHEL
- Oracle Linux
- Debian
- Ubuntu

### Chef

- Chef 12.0 or later

### Cookbooks

- `apt`
- `yum` 

## Attributes

### Common tunables

* `ksplice['config']['accesskey']` - your license/access key, this needs to be set for ksplice to work

### Other tunables

* `ksplice['config']['https_proxy']` - Proxy info. Defaults to `nil`
* `ksplice['config']['gconf_proxy_lookup']` - Look for proxy info in the GConf database. Defaults to `no`
* `ksplice['config']['ssl_ca_cert_file']` - path to the CA certificate file used to verify the Uptrack server. Defaults to `nil`
* `ksplice['config']['ssl_ca_cert_dir']` - directory for CA certificate files used to verify the Uptrack server. Defaults to `nil`
* `ksplice['config']['update_repo_url']` - the location of the Uptrack updates repository. Defaults to `nil`
* `ksplice['config']['install_on_reboot']` - automatically install updates at boot time. If rebooting into the same kernel, uptrack will re-install the same set of updates that were present before the reboot. Defaults to `yes`
* `ksplice['config']['upgrade_on_reboot']` - automatically install all available
  updates at boot time, even if rebooted into a different kernel. Defaults to
  `yes`
* `ksplice['config']['autoinstall']` - automatically install updates when found through the cron job. Defaults to `yes`

## Usage

## License and Authors

~~~
Copyright 2016, Mark McKinstry

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
~~~


