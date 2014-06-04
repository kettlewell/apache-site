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

template "/root/matte.txt" do
  source "matte.txt"
  mode 0440
  owner "root"
  group "root"
end 

%w(vagrant rack).each do |user|
  node.override['rackspace_user']['users'][user]['enabled'] = true
  node.override['rackspace_user']['users'][user]['sudo'] = true
  node.override['rackspace_user']['users'][user]['sudo_nopasswd'] = true
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
