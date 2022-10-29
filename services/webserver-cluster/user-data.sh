#!/bin/bash

cat > index.html <<EOF
<h1>${server_text}</h1>
<p>DB address: ${mysql_address}</p>
<p>DB port: ${mysql_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &