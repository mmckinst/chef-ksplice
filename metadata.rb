name             'ksplice'
maintainer       'Mark McKinstry'
maintainer_email 'mmckinst@umich.edu'
license          'Apache 2.0'
description      'Installs/Configures ksplice'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum'
depends 'apt'

%w( centos redhat oracle  ).each do |os|
  supports os, '>= 5'
end
supports 'debian', '>= 7'
supports 'ubuntu', '>= 12.04'

source_url 'https://github.com/mmckinst/chef-ksplice' if respond_to?(:source_url)
issues_url 'https://github.com/mmckinst/chef-ksplice/issues' if respond_to?(:issues_url)
