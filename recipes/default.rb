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
