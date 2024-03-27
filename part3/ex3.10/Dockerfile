FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json .
RUN rm -rf node_modules
RUN rm -rf build
RUN npm install
COPY . .
RUN npm run build

FROM node:18-alpine AS run

WORKDIR /app

COPY --from=build /app/package*.json ./
COPY --from=build /app/build ./build
COPY --from=build /app/node_modules ./node_modules

RUN adduser -D -h /home/prod prod
USER prod

ENTRYPOINT [ "node", "build" ]
