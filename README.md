# Torrentexpander Module

## Overview

This will setup and install torrentexpander.sh to use in conjunction with your existing torrent setup.

## Capabilities

Requires:

- *nix operating system
- rar: installable through this module

## Torrentexpander Parameters

`* `install_dir`<br />
The directory in which to deploy the torrentexpander.sh and torrentexpander_settings.ini files. Required.

* `user`<br />
The user you want the torrentexpander.sh script to be owned by. Default: `root`

* `group`<br />
The group you want the torrentexpander.sh script to be owned by. Default: `root`

* `tmp_dir`<br />
The directory in which torrentexpander.sh will place temporary files for expansion. Default: `/tmp`

* `manage_rar`<br />
Rar must be installed for torrentexpander.sh to work.  Select false if you are installing the rar package elsewhere. Default: `true`

## Example Usage

Install torrentexpander into `/root/bin`:

```puppet
class { 'torrentexpander': install_dir => '/root/bin', }
```

Install torrentexpander into `/root/bin` and owned by `torrent` user and group:

```puppet
class { 'torrentexpander':
  install_dir => '/root/bin',
  user        => 'torrent',
  group       => 'torrent',
}
```

Install torrentexpander into `/torrent/scripts` without managing `rar`:

```puppet
class { 'torrentexpander':
  install_dir => '/root/bin',
  manage_rar  => false,
}
```

Install torrentexpander into `/var/lib/transmission/bin` using `/var/tmp` for a temporary directory:

```puppet
class { 'torrentexpander':
  install_dir => '/var/lib/transmission/bin',
  tmp_dir     => '/var/tmp',
}
```

## Parameters for torrentexpander_settings.ini

There are a variety of parameters specific to torrentexpander as detailed here: https://code.google.com/p/torrentexpander/.  The params and their defaults are listed in `params.pp`.
