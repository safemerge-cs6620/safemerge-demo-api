# The demo "customer" app: the course-provided vulnerable test API.
FROM node:20-alpine
WORKDIR /app

# Install dependencies first, so Docker can reuse this layer when only code changes
COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY test-target.js ./

# Run as the built-in non-root user, not as root
USER node
EXPOSE 4000
CMD ["node", "test-target.js"]
