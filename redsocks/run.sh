apt-get install iptables redsocks curl lynx -qy
cp redsocks.conf /etc/redsocks.conf
/etc/init.d/redsocks restart
iptables -t nat -A OUTPUT  -p tcp --dport 21 -j REDIRECT --to-port 12345
iptables -t nat -A OUTPUT  -p tcp --dport 80 -j REDIRECT --to-port 12345
iptables -t nat -A OUTPUT  -p tcp --dport 443 -j REDIRECT --to-port 12345

