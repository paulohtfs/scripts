# This is a recipe that install tools from a non official
#   debian package repository. Some of the tools are deb
#   package made by the developers and may contain unknown bugs

# Atom:
#   Text editor
ATOM_DEB_DIR='/tmp/atom-amd64.deb'
remote_file ATOM_DEB_DIR do
  source 'https://atom.io/download/deb'
  owner 'root'
  group 'root'
end

dpkg_package 'atom' do
  source ATOM_DEB_DIR
end

# Vagrant:
#   Development environment
#
# This will isntall a debian package of vagrant from the official
#   website www.vagrantup.com. There is a .deb avable on apt repo
#   but is not update.
VAGRANT_DEB_DIR='/tmp/vagrantup.deb'
remote_file VAGRANT_DEB_DIR do
  source 'https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb'
  owner 'root'
  group 'root'
end

