class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCh7SZVeM55P5x1MuFyw0N73CcWZlAPd8HAALhEmrMZfvbrenKgfhiJVx3lCLAYhLQD10ZTlDYSg2mqDD0ZAoR/wRCDdMOpMdU5SGJJv9P6dAOlsUNiJH5tI6hASeAUzIEVQS3PzgsXjLTGPX7fiVemUnu69DDLCynRzspSYQppso529q1BP33/ohr9J1xcrZohn+zsP+OkPxoEfiXYx8ROyvBqgOf5bpZweJ3OiTO/pQt42qqBhIUQrhpxlUJVfnibjW8Taxshd/jZR6Lg3ZLYl8Pc2pnpuGUVZT0jDW+YNtqtI6EK2UvF5EOyneY8MjVkbr0uydJQs9KZwzygdYuf',
	}  
}
