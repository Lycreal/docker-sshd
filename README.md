A ssh server based on Ubuntu.

Password login is disabled.
RSA key is the only way to start a ssh connection.

username:root
password:root


Usage:

`docker run -d -e key="<key>" lycreal/sshd`
or
`docker run -d -e key="<key1>\n<key2>\n<key3>..." lycreal/sshd`


For example:

``docker run -d -e key="`cat ~/.ssh/id_rsa.pub`" -p 2222:22 lycreal/sshd``
