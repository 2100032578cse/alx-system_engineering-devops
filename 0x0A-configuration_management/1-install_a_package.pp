#ensuring pip

package { 'python3-pip':
  ensure => present,
}
# ensure that python present 
package { 'python3.8':
  ensure => present,
}
# Install Werkzeug 
package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip',
  require  => Package['python3-pip'],
}
#install flask
package {'flask':
ensure   => '2.1.0',
provider => 'pip3',
require  => Package['python3-pip'],
}
