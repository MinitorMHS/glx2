#unzip命令被取消，无法自动更新，需要手动更新

#define folders
CONFIG="/app/etc/v2ray"
APP="/app/usr/bin"

#write config.json
cat << EOF > ${CONFIG}/config.json
{
    "inbounds": [{
        "port": $PORT,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "8e80ac3a-989f-4f4c-b242-1b21c2082662",
                "alterId": 64
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#configure
${APP}/v2ctl config ${CONFIG}/config.json > ${CONFIG}/config.pb

#run
${APP}/v2ray -config=${CONFIG}/config.pb
