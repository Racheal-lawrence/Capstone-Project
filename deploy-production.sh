#!/bin/bash
echo "Deploying to production environment..."
# Example: If you're using AWS EC2, deploy with SSH
scp -r ./dist/* user@production-server:/path/to/production/app

# Or deploy using Docker (adjust as needed)
docker-compose -f docker-compose.production.yml up -d

