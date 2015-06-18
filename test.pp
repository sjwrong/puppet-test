augeas { 'ssh':
 changes => [
  "set /files/etc/ssh/sshd_config/PermitRootLogin yes",
  ],
}

