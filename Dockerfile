FROM node:18-alpine AS builder

WORKDIR /app

COPY src/ /app

RUN npm ci --only=production

FROM builder AS runner

WORKDIR /app 

COPY --from=builder /app ./

EXPOSE 3000

CMD ["node", "src/server.js"]