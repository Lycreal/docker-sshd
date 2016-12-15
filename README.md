A ssh server based on Ubuntu.

Password login is disabled.
RSA key is the only way to start a ssh connection.

username:root
password:root

Usage:

docker run -id -e key="<key1>[\n<key2>...]" lycreal/sshd
