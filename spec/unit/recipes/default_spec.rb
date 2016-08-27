require 'spec_helper'

describe 'ksplice::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new().converge(described_recipe)
  end

  it 'installs uptrack' do
    expect(chef_run).to install_package('uptrack')
  end

  it 'removes /etc/cron.d/uptrack' do
    expect(chef_run).to delete_file('/etc/cron.d/uptrack')
  end

  it 'creates config file' do
    expect(chef_run).to render_file('/etc/uptrack/uptrack.conf')
  end

  it 'creates cron job' do
    expect(chef_run).to create_cron('export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && [ -x /usr/sbin/uptrack-upgrade ] && /usr/sbin/uptrack-upgrade --cron')
  end

end
