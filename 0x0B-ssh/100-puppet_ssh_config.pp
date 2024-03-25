#!/usr/bin/env bash
#file so that you can connect to a server witthout password
file { '/etc/ssh/ssh_config':
  ensure  => present,
content => "
    # ssh client configurations
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
