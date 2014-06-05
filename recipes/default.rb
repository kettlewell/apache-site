# Encoding: utf-8
#
# Cookbook Name:: apache-site
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
include_recipe 'apt::default'
include_recipe 'apache2::default'
include_recipe 'chef-client::default'

%w(vagrant rack).each do |user|
  node.override['rackspace_user']['users'][user]['enabled'] = true
  node.override['rackspace_user']['users'][user]['sudo'] = true
  node.override['rackspace_user']['users'][user]['sudo_nopasswd'] = true
end

apt_package "emacs" do
end

cookbook_file "mattjbarlow.txt" do
  path "/root/mattjbarlow.txt"
end

cookbook_file "mattparker.txt" do
  path "/root/mattparker.txt"
  action :create_if_missing
end

cookbook_file "johnschwinghammer.txt" do
  path "/root/johnschwinghammer.txt"
  action :create_if_missing
end

<<<<<<< HEAD
cookbook_file "jamescobb.txt" do
  path "/root/jamescobb.txt"
=======
cookbook_file "bobgarza.txt" do
  path "/root/bobgarza.txt"
>>>>>>> 3950d1e672fe5c8631357e03ae84e4c98f342b26
  action :create_if_missing
end

template "/root/matte.txt" do
  source "matte.txt"
  mode 0440
  owner "root"
  group "root"
end 

cookbook_file "jonclayton.txt" do
  path "/root/jonclayton.txt"
  action :create_if_missing
end

template "/etc/profile.d/editor.sh" do
  source "editor.sh.erb"
  mode 0644
  owner "root"
  group "root"
end
