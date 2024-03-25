#file so that you can connect to a server without typing a password.
file_line { 'no password connect':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}
file_line { 'change the private key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school'
}

