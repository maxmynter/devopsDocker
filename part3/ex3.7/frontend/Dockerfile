FROM node:16-slim as builder

WORKDIR /usr/src/app

COPY example-frontend/ .

RUN npm install &&  npm run build 


FROM node:16-slim

WORKDIR /usr/src/app

RUN npm install -g serve && \
	useradd -m frontendExecutor && \
	mkdir -p /usr/src/app && \
	chown -R frontendExecutor:frontendExecutor /usr/src/app

COPY --from=builder /usr/src/app/build ./build

EXPOSE 5000

USER frontendExecutor

CMD serve -s -l 5000 build

