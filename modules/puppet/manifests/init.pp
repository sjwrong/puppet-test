class puppet {
	file { '/usr/local/bin/papply':
		source	=> 'puppet:///modules/puppet/papply.sh',
		mode	=> '0755',
                owner => 'root',
                group => 'root',
 }
cron { 'run-puppet':
	ensure => 'present',
	user => 'root',
	command => 'git pull',
	minute => '*/10',
	hour => '*',
	}
}
