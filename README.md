# Setup VPN in few minutes

### requirements
- make
- docker
- docker-compose

### vps
```bash
  git clone https://github.com/eldarik/openvpn.git
  cd openvnp
  make install-docker
  make setup-vpn-server
  make serve-vpn-config
```

### on your local machine
```bash
  wget --no-check-certificate http://<IP>
  mv index.html vpn.opvn
```

Then open `vpn.opvn` in vpn client. I use TunnelBlick.
