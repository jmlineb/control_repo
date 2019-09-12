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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEHnS00pqqx8JYMIW2QZdP/Qt0NHo0j9P8afF32DWTEMQT6aH2E7xpGM4sdQePAYnVytUnWSNVuyseBoTQBg95pzkg/bzgt/BL1LVyVcTp0G2OE/rZQatXuMiPpWnKq0pLjLLeLamQPZ2Da//z9tUeNCycGtataey9LTt/pqG7BKWXpzbgWBdLufYeVu5Rh7aZfUjEHILC7w1FXG3Zwp6NGAuHCRC7XN5NbNNg8n10nDPq9TQg81BMvdQi57F+PyjGOov/dgfrJSC7d83pgBgxEyFIHD5zLZ8gZaK8wX1hCcE3gf5n/A7RIa4ZftJwLwpsb2B9nmhWPfWXYCy4zt3Z',
	}  
}
