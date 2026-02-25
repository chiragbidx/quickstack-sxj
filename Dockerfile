# Minimal static preview container
FROM node:20-alpine

# Install git (needed for polling remote changes)
RUN apk add --no-cache git

WORKDIR /app

# Copy only what we need for runtime (no build step)
COPY . .

EXPOSE 8080

CMD ["node", "scripts/static-supervisor.js"]
