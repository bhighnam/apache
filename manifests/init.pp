class apache
{
	package
	{
		"httpd":
		ensure => installed,
	}
							
	service
	{
		"httpd":
		ensure   => running,
	    require  => Package['httpd'],
	}
																		
	exec
	{
	   "yum-update":
	    command => "/usr/bin/yum update -y
		require => Service['httpd'],
	}
} # end of class apache