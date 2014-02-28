class torrentexpander {
  $transdir = "/var/lib/transmission"
  package { "rar":
    ensure => installed,
  }
  File {
    ensure  => present,
    owner   => 'transmission',
    group   => 'transmission',
    require => Class['transmission'],
  }
  file { "$transdir/bin/torrentexpander.sh":
    mode    => '0755',
    source  => "puppet:///modules/${module_name}/torrentexpander.sh",
  }
  file { "$transdir/bin/torrentexpander_settings.ini":
    mode   => '0644',
    source => "puppet:///modules/${module_name}/torrentexpander_settings.ini",
  }
}
