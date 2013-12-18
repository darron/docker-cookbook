# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'docker::default' do
  describe service('docker') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(4243) do
    it { should be_listening }
  end
end
