node  'cookbook' {
	file { '/tmp/hello':
	content => "Hello World\n",
	}
}
