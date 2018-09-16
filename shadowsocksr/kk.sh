#!/usr/bin/bash
yum update -y
yum install -y wget git
yum install epel-release
yum install -y supervisor
bash ./bbr.sh


#vi /usr/lib/systemd/system/supervisord.service
#
#[Unit] Description=Process Monitoring and
#Control Daemon After=rc-local.service nss-user-lookup.target
#[Service] Type=forking PIDFile=/var/run/supervisord.pid
#ExecStart=/usr/bin/supervisord -c /etc/supervisord.conf
#ExecStop=/usr/bin/supervisorctl shutdown
#ExecReload=/usr/bin/supervisorctl reload KillMode=process
#Restart=on-failure RestartSec=42s [Install]
#WantedBy=multi-user.target


#vi /etc/supervisord.conf 
#[program:shadowsocksr]
#directory=/root/endssr/shadowsocksr
#command=python server.py m
#user=root
#autostart = true
#autoresart = true
#stderr_logfile = /root/endssr/shadowsocksr/ssserver.log
#stdout_logfile = /root/endssr/shadowsocksr/ssserver.log
#stderr_logfile_maxbytes=10MB
#stderr_logfile_backups=10
#startsecs=3
