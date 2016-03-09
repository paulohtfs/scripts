require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "git installed" do
  it "is listening on port 9418" do
    expect(port(22)).to be_listening
  end
  it "has a running service of git" do
    expect(service("ssh")).to be_running
  end
end
