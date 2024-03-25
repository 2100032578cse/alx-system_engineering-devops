#file so that you can connect to a server without typing a password.
file { '/etc/ssh/ssh_config':
	ensure 	=> present,
content =>"

	#client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no"
}
