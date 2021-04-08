#!/bin/bash

# https://discord.com/api/webhooks/829646064515678259/vUra5k4auLji6t0utd1gOUB3A0GsGGKVU-1jnOy_WStkiDp9hQplzZtJ0EiP3IvqJ-uY

users=$(w -h)
url=$(echo $DISCORD_WEBHOOK)

curl -H "Content-Type: application/json" -X POST -d '{"content": "'"A **user** just logged in. \ncurrently logged users:\n\`\`\`bash\n${users}\`\`\`"'"}' $url
