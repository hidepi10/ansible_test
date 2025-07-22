# ansible_test
ansible勉強用

- dnf install systemd procps iputils bind-utils iproute

- dnf install openssh-server

- dnf install openssh-clients
- ssh-keygen
- cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
- systemctl start sshd
- dnf install -y epel-release
- dnf install -y ansible
- ansible --version

- dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
- dnf -qy module disable postgresql
- dnf install -y postgresql15-server rsync