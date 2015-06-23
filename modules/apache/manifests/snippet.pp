define apache::snippet() {
 require apache

 file { "/etc/apache2/conf.d/${name}":
  source  => "puppet:///modules/apache/${name}",
  require => Package['apache2-mpm-prefork'],
  notify  => Service['apache2'],
 }
}
