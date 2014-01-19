# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'docker::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs lxc-docker' do
    expect(chef_run).to install_package('lxc-docker')
  end

  it 'creates the docker defaults file' do
    expect(chef_run).to create_template('/etc/default/docker')
  end

  it 'enables the docker service' do
    expect(chef_run).to enable_service('docker')
  end

  it 'starts the docker service' do
    expect(chef_run).to start_service('docker')
  end
end
