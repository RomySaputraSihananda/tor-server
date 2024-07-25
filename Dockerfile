FROM alpine:latest

RUN apk update && apk add tor

COPY torrc /etc/tor/torrc

RUN chown -R tor /etc/tor

ENTRYPOINT ["tor"]

EXPOSE 9050
EXPOSE 9051

CMD ["-f", "/etc/tor/torrc"]