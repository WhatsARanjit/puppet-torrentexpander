require 'spec_helper'

describe 'torrentexpander', :type => :class do
  let :facts do
  {
  :kernel => 'Linux',
  }
  end
  let :pre_condition do
    'include torrentexpander::params'
  end
  describe "installing torrentexpander with defaults" do
    context "installing into /root/bin" do
      let :params do
        {
          :install_dir => '/root/bin',
        }
      end
      it { should contain_class('torrentexpander') }
      it { should contain_package('rar') }
      it { should contain_file("/root/bin/torrentexpander.sh").with(
        'ensure' => 'file',
        'owner'  => 'root',
        'group'  => 'root'
      ) }
      it { should contain_file("/root/bin/torrentexpander_settings.ini").with(
        'ensure' => 'file',
        'owner'  => 'root',
        'group'  => 'root'
      ) }
    end
  end
  describe "installing torrentexpander with custom user/group" do
    context "user/group torrent" do
      let :params do
      {
        :install_dir => '/root/bin',
        :user        => 'torrent',
        :group       => 'torrent',
      }
      it { should contain_file("/root/bin/torrentexpander.sh") }
      it { should contain_file("/root/bin/torrentexpander.sh").with(
        'ensure' => 'file',
        'owner'  => 'torrent',
        'group'  => 'torrent'
      ) }
      it { should contain_file("/root/bin/torrentexpander_settings.ini").with(
        'ensure' => 'file',
        'owner'  => 'torrent',
        'group'  => 'torrent'
      ) }
      end
    end
  end
end
