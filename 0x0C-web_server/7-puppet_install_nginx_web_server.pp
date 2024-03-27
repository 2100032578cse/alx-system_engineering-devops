#Install Nginx web server (w/ Puppet)

exec {'installation':
provider => 'shell',
command  => 'sudo apt-get -y update'
}
