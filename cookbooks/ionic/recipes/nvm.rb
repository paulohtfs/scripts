# Cookbook Name:: ionic
# Recipe:: nvm
#

execute 'apt-get update' do
  command 'apt-get update'
  user 'root'
end

package 'build-essential'
package 'libssl-dev'
package 'curl'

execute 'nvm-setup' do
  command 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash'
end

execute 'nvm-install-nodejs' do
  command 'nvm install 4.3.1'
  user 'root'
end

execute 'npm-install-cordova' do
  command 'npm install -g cordova'
end

execute 'npm-install-ionic' do
  command 'npm install -g ionic'
end
