class user::virtual {
 define ssh_user($key) {
  user { $name:
   ensure     => present,
   managehome => true,
  } 
  file { "/home/${name}/.ssh":
   ensure => directory,
   mode   => '700',
   owner  => $name,
  }
  ssh_authorized_key { 'user':
   key     => $key,
   type    => 'ssh-rsa',
   user    => $name,
   require => File["/home/${name}/.ssh"],
  }
}
 @ssh_user { 'test1':
 key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTGJnTRa+xcKXeSdoNEwb3n3pVQVPbjshPcBLPJQGFezpaJpZ056VpwPpnolPXu1q2l0r3+YQ9Ie6nlD2DiJURWb0zp3hElzFG+6986Rw7cTiTfqHZ7q2jCkNUfp3N/CkWBVPFseN03NmNRe3fezHXqXYp6Vx3tzz0UZjzatSJnNvKG7VSej5LGg5ocW6jGCVw9FhrQEvj5f49aC9vH7uDjHSpHClsZP3TrofDyvNREb99BL6VyHHO7iN5RjLXMUCDTZGVEMYxY3JiFiyk0GACw9anBVVSDiTeWEhhxznCXEwprf18KUrk2AXwlhTq9zUXxcjFQMl8NRjFfDQdItpH',
 }
}
