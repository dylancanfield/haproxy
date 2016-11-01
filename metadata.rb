name              "haproxy"
maintainer        'Heavy Water Software Inc.'
maintainer_email  'ops@hw-ops.com'
license           "Apache 2.0"
description       "Installs and configures haproxy"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.6.6"

recipe "haproxy", "Installs and configures haproxy"
recipe "haproxy::app_lb", "Installs and configures haproxy by searching for nodes of a particular role"

%w{ debian ubuntu centos redhat scientific oracle }.each do |os|
  supports os
end

depends           "cpu", ">= 0.2.0"
depends           "build-essential"

source_url 'https://github.com/hw-cookbooks/haproxy' if respond_to?(:source_url)
issues_url 'https://github.com/hw-cookbooks/haproxy/issues' if respond_to?(:issues_url)
chef_version '>= 11.0' if respond_to?(:chef_version)
