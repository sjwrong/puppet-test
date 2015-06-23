define apache::vhost($domain='UNSET',$root='UNSET') {
 require apache

 if $domain == 'UNSET' {
  $vhost_domain = $name
 } else {
  $vhost_domain = $domain
 }
 
 if $root == 'UNSET' {
 $vhost_root = '/var/www/${name}'
 } else {
 $vhost_root = $root
 }
 file { "/etc/apache2/sites-available/${vhost_domain}.conf":
  content => template('apache/vhost.erb'),
}
file { "/etc/apache2/sites-available/${vhost_domain}.conf":
  ensure => 'link',
  target => "/etc/apache2/sites-enabled/${vhost_domain}.conf",
 }
}
