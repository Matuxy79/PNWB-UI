# syntax=docker/dockerfile:1

######## Frontend build ########
FROM node:22-alpine3.20 AS ui-build
WORKDIR /app

# Install deps
COPY package.json package-lock.json ./
RUN npm ci --legacy-peer-deps

# Build UI
COPY . .
RUN npm run build

######## Runtime ########
FROM ghcr.io/open-webui/open-webui:main

# Overlay our built frontend and static assets
COPY --from=ui-build /app/build /app/build
COPY --from=ui-build /app/static /app/static
COPY --from=ui-build /app/backend/open_webui/static /app/backend/open_webui/static

EXPOSE 8080
CMD ["bash", "start.sh"]
