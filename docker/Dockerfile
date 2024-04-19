FROM node:21 as builder

# needed for pnpm to install dev dependencies
ENV NODE_ENV development
RUN npm install -g pnpm
WORKDIR /app
COPY package*.json pnpm-lock.yaml* ./
RUN pnpm install
COPY . . 
ENV NODE_ENV production
RUN pnpm run build

FROM caddy:2.7.6
COPY --from=builder /app/build /usr/share/caddy
WORKDIR /usr/share/caddy
EXPOSE 80
ENTRYPOINT ["caddy"]
CMD ["file-server"]