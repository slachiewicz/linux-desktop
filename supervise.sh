cat << EOF >> /etc/supervisord.conf

[program:xinitrc]
environment=DISPLAY=":1"
command=/init-env.sh
user=root
autorestart=true
startretries=10
priority=500
EOF
