#!/bin/sh

#mkdir
mkdir /app/usr
mkdir /app/usr/bin

# Global variables
DIR_CONFIG="/app/etc/v2ray"
DIR_RUNTIME="/app/usr/bin"
DIR_TMP="$(mktemp -d)"

# Write V2Ray configuration
cat << EOF > ${DIR_TMP}/v2ray.json
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

# Get V2Ray executable release 
curl --retry 10 --retry-max-time 60 -H "Cache-Control: no-cache" -fsSL github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -o ${DIR_TMP}/v2ray_dist.zip
unzip ${DIR_TMP}/v2ray_dist.zip -d ${DIR_TMP}

# Convert to protobuf format configuration
mkdir -p ${DIR_CONFIG}
${DIR_TMP}/v2ctl config ${DIR_TMP}/v2ray.json > ${DIR_CONFIG}/config.pb

# Install V2Ray
mv ${DIR_TMP}/v2ray ${DIR_RUNTIME}/v2ray
chmod 755 ${DIR_RUNTIME}/v2ray
rm -rf ${DIR_TMP}

# Run V2Ray
${DIR_RUNTIME}/v2ray -config=${DIR_CONFIG}/config.pb
