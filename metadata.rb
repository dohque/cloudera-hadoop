name              'cloudera-hadoop'
maintainer        'Ruslan Pilin'
description       'Installs Cloudera Hadoop'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.0.1'
license           'MIT'

recipe 'cloudera-hadoop', 'Installs Cloudera Pseudo (all on one node)'

%w{ centos }.each do |os|
  supports os
end

depends "yum"
depends "java"
