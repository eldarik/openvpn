# TODO: fix
install-docker:
	sudo apt install docker.io -y
	sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

setup-vpn-server:
	docker-compose -f vpn.docker-compose.yml up -d vpn-server

serve-vpn-config:
	docker-compose -f vpn.docker-compose.yml up -d vpn-serve-config

remove-vpn-server-config:
	docker-compose -f vpn.docker-compose.yml kill vpn-serve-config
