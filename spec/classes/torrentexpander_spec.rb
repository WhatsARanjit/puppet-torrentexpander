require 'spec_helper'

describe 'torrentexpander', :type => :class do
  context "on Linux system to" do
    let :facts do
    {
    :kernel => 'Linux',
    }
    end
    let :pre_condition do
      'include torrentexpander::params'
    end
    describe "install with defaults" do
      context "into /root/bin" do
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
    describe "install with custom user and group" do
      context "using user/group torrent" do
        let :params do
          {
            :install_dir => '/root/bin',
            :user        => 'torrent',
            :group       => 'torrent',
          }
        end
        it { should contain_class('torrentexpander') }
        it { should contain_package('rar') }
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
    describe "use custom parameters" do
      context "testing a custom img_post" do
        let :params do
          {
            :install_dir => '/root/bin',
            :img_post    => 'thisisatestvariable'
          }
        end
        it { should contain_file("/root/bin/torrentexpander_settings.ini").with_content %r{img_post=thisisatestvariable} }
      end
    end
  end
end
