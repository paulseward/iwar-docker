FROM alpine:3.14 as builder
RUN apk update && \
    apk add git make gcc musl-dev ncurses-dev bash mandoc

RUN git clone https://github.com/beave/iwar.git && \
    cd iwar && \
    ./configure && \
    make && \
    make install

FROM alpine:3.14

RUN apk upgrade --no-cache && \
    apk add --no-cache bash mandoc atinout minicom

COPY --from=builder /usr/local/share/man /usr/share/man
COPY --from=builder /usr/local/bin/iwar /usr/local/bin/
COPY --from=builder /usr/local/etc/iwar* /usr/local/etc/

