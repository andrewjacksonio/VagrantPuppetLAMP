# execute 'apt-get update'
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

# install Apache2 
package { 'apache2':
  require => Exec['apt-update'],
  ensure => installed,
}

service { 'apache2':
  ensure => running,
}