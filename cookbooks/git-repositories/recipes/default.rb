# This cookbook will clone all main repositories across GitHub and GitLab.
# Not all repositories are listed in here. If you want, add more repo.
# Warning: This will clone with SSH, make sure that you have your key on you env.

WORKSPACE_DIR=ENV['HOME']+'/workspace'

directory WORKSPACE_DIR

git 'clone-softwarepublico' do
  repository 'git@softwarepublico.gov.br:softwarepublico/softwarepublico.git'
  revision 'master'
  destination WORKSPACE_DIR + '/softwarepublico'
end

git 'clone-awards-app' do
  repository 'git@github.com:RestApps/awards_app.git'
  revision 'master'
  destination WORKSPACE_DIR + '/awards_app'
end

git 'clone-awards-api' do
  repository 'git@github.com:RestApps/awards_api.git'
  revision 'master'
  destination WORKSPACE_DIR + '/awards_api'
end

