#!/bin/bash
echo "Deploying to staging environment..."
# Example: If you're using AWS EC2, deploy with SSH
scp -r ./dist/* user@staging-server:/path/to/staging/app

# Or if you're using Docker
docker-compose -f docker-compose.staging.yml up -d

