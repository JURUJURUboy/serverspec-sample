require 'spec_helper'

describe file('/usr/bin/git') do
  it { should be_file }
end

describe file('/usr/bin/ruby') do
  it { should be_file }
end

describe file('/usr/bin/vim') do
  it { should be_file }
end

describe command('gem list -l | grep serverspec') do
  it { should return_stdout 'serverspec (0.7.0)' }
end      
