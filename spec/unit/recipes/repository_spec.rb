require 'spec_helper'

describe 'ksplice::repository' do
  context 'CentOS' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '6.8').converge(described_recipe)
    end

    it 'adds yum repository with centos baseurl' do
      expect(chef_run).to create_yum_repository('ksplice-uptrack').with(baseurl: 'http://www.ksplice.com/yum/uptrack/centos/$releasever/$basearch/')
    end
  end
  context 'RHEL' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'redhat', version: '7.1').converge(described_recipe)
    end

    it 'adds yum repository with rhel baseurl' do
      expect(chef_run).to create_yum_repository('ksplice-uptrack').with(baseurl: 'http://www.ksplice.com/yum/uptrack/rhel/$releasever/$basearch/')
    end
  end

  context 'Oracle Enterprise Linux' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'oracle', version: '7.1').converge(described_recipe)
    end

    it 'adds yum repository with ol baseurl' do
      expect(chef_run).to create_yum_repository('ksplice-uptrack').with(baseurl: 'http://www.ksplice.com/yum/uptrack/ol/$releasever/$basearch/')
    end
  end

  context 'Ubuntu' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe)
    end

    it 'adds apt repository' do
      expect(chef_run).to add_apt_repository('ksplice-uptrack')
    end
  end
  context 'Debian' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'debian', version: '8.4').converge(described_recipe)
    end

    it 'adds apt repository' do
      expect(chef_run).to add_apt_repository('ksplice-uptrack')
    end
  end
end
