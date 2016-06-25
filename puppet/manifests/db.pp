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

# hosts file entry so DB tier is aware of web tier
file_line { 'Append a line to /etc/hosts':
  path => '/etc/hosts',  
  line => '192.168.33.10  web.andrewjackson.io  web',
}

# Configure Mysql to listen on all interfaces
file_line { 'Append a line to /etc/mysql/my.cnf':
  path => '/etc/mysql/my.cnf',  
  line => 'bind-address = 0.0.0.0',
  match   => '^bind-address.*$',
  notify => Service['mysql'],
}