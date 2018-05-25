docker run --rm -p 443:443 \
    -e UPSTREAM_PORT=8080 \
    -e SELF_SIGN="true" \
    -e DOMAIN="localhost.ssl" \
    -e COUNTRY="US" \
    -e STATE="Washington" \
    -e LOCALITY="Seattle" \
    -e ORGANIZATION="Microsoft" \
    -e ORGANIZATIONAL_UNIT="Azure" \
    --link hopeful_shirley:hopeful_shirley \
    -v ~/tester:/var/log/nginx \
    --name ssl-sidecar ntest