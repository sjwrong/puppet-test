class apache::vhi {
require apache::vhost

file { "/etc/apache2/sites-available/${vhost_domain}.conf":
  ensure => 'link',
  target => "/etc/apache2/sites-enabled/${vhost_domain}.conf",
 }


}
