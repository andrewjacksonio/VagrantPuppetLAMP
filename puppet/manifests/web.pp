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

# install PHP and Mysql module
package { 'php5':
  ensure => installed,
  require => [ Exec['apt-update'], Package['apache2'] ],
}

# install Mysql module for PHP
package { 'php5-mysql':
  ensure => installed,
  require => [ Exec['apt-update'], Package['apache2'] ],
  notify => Service['apache2'],
}

# PHP Info page, to ensure PHP is installed correctly
file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['php5'],
}
