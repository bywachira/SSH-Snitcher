#!/bin/bash

users=$(w -h)
url=$(echo $DISCORD_WEBHOOK)

curl -H "Content-Type: application/json" -X POST -d '{"content": "'"A **user** just logged in. \ncurrently logged users:\n\`\`\`bash\n${users}\`\`\`"'"}' $url
