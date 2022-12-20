echo $HOST_IP
echo $HOST_NET
echo $Domain_Names
echo $CERT_KEY

# node /owt-server/management_api/initcert.js
# $CERT_KEY


sed -i "/^network_interfaces =/c \network_interfaces = [{name = \"$HOST_NET\", replaced_ip_address = \"$HOST_IP\"}]" /owt-server/webrtc_agent/agent.toml
sed -i "/^ip_address = /c \ip_address =  \"$HOST_IP\"" /owt-server/portal/portal.toml 
sed -i "/^hostname = /c \hostname  =  \"$Domain_Names\"" /owt-server/portal/portal.toml 
/owt-server/bin/init-all.sh
/owt-server/bin/init-all.sh
/owt-server/bin/start-all.sh
sleep infinity
