name             "users"
maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Creates users from a databag search"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.5.2"
recipe           "users", "Empty recipe for including LWRPs"
recipe           "users::wheel", "Create and manage wheel group"
recipe           "users::chef", "Create and manage chef group"

%w{ ubuntu debian redhat centos fedora freebsd}.each do |os|
  supports os
end
