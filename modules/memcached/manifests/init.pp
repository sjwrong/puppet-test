class memcached { 
package { 'memcached': ensure => installed,}
 file { '/etc/memcached.conf':
  source => '',
  owner => 'root',
  group => 'root',
  mode => 'root',
  require => Package['memcached']
 }
 service { 'memcached':
  ensure => running,
  enable => true,
require => [Package['memcached'],File['/etc/memcached.conf']]
 }
}
