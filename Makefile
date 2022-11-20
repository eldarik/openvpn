# TODO: fix
install-docker:
	sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt install docker-ce -y
	sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

setup-vpn-server:
	docker-compose -f vpn.docker-compose.yml up -d vpn-server

serve-vpn-config:
	docker-compose -f vpn.docker-compose.yml up -d vpn-serve-config

remove-vpn-server-config:
	docker-compose -f vpn.docker-compose.yml kill vpn-serve-config
