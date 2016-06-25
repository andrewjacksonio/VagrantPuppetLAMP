# execute 'apt-get update'
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

# install Mysql
package { 'mysql-server':
  require => Exec['apt-update'],
  ensure => installed,
}

service { 'mysql':
  ensure => running,
}