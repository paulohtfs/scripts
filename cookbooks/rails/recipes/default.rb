# Cookbook Name:: rails
# Recipe:: default
#

# Dependecies
execute 'apt-update' do
  command 'apt-get update'
  user 'root'
end

package 'curl'

execute 'add-gpg-key' do
  command 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'
end

execute 'install-rvm-stable' do
  command '\curl -sSL https://get.rvm.io | bash -s stable --ruby'
end


