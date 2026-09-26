#!/bin/bash
# Deploy nginx-proxy-manager to remote server via Docker context

set -e

CONTEXT="tracktor-prod"
COMPOSE_FILE="${1:-docker-compose.prod.yml}"

echo "Deploying with context: $CONTEXT"
echo "Using compose file: $COMPOSE_FILE"

# Pull latest image
echo "Pulling latest image..."
docker --context "$CONTEXT" compose -f "$COMPOSE_FILE" pull

# Start/restart
echo "Starting services..."
docker --context "$CONTEXT" compose -f "$COMPOSE_FILE" up -d

# Show status
echo ""
echo "Status:"
docker --context "$CONTEXT" compose -f "$COMPOSE_FILE" ps

echo ""
echo "Done! Access at http://your-server:81"
echo "Default login: admin@example.com / changeme"