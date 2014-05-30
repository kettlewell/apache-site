# Encoding: utf-8
name 'apache-site'
maintainer 'Matt Barlow'
maintainer_email 'mail@mattjbarlow.com'
license 'All Rights Reserved'
description 'Installs/Configures apache-site'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.9'
depends 'apache2'
depends 'chef-client'
depends 'apt'
depends 'rackspace_user'
