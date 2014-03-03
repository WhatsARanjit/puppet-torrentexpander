include torrentexpander::params
class { 'torrentexpander':
  install_dir => '/root/bin',
  user        => 'root',
  group       => 'root',
  manage_rar  => true,
}
