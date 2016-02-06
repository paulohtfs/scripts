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
