FROM node:22-bookworm-slim as base
ENV NODE_ENV production
RUN apt-get update

FROM base as deps
WORKDIR /app
ADD package.json package-lock.json .npmrc ./
RUN npm ci --include=dev

FROM base as production-deps
WORKDIR /app
COPY --from=deps /app/node_modules /app/node_modules
ADD package.json package-lock.json .npmrc ./
RUN npm prune --omit=dev

FROM base as build
ARG COMMIT_SHA
ENV COMMIT_SHA=$COMMIT_SHA
WORKDIR /app
COPY --from=deps /app/node_modules /app/node_modules
ADD . .
RUN npm run build

FROM caddy:2.9.1 AS runtime
COPY --from=build /app/dist /usr/share/caddy
EXPOSE 80
