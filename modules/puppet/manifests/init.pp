class puppet {
	file { '/usr/local/bin/papply':
		source	=> 'puppet:///modules/puppet/papply.sh',
		mode	=> '0755',
 }
file { '/usr/local/bin/pull-updates':
	source => 'puppet:///modules/puppet/pull-updates',
	mode => '0755',
}
file { '/root/.ssh/id_rsa.pub':
	source => 'puppet://modules/ubuntu.priv',
	owner => 'root',
	mode => '0600',
}
cron { 'run-puppet':
	ensure => 'present',
	user => 'root',
	command => '/usr/bin/local/pull-updates',
	minute => '*/10',
	hour => '*',
	}
}
