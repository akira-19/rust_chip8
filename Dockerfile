FROM rust:1.61-alpine3.14
WORKDIR /app
RUN apk update && \
	apk add musl-dev bash sdl2-dev && \
	cargo install cargo-watch

CMD ["cargo", "watch", "-x", "run"]