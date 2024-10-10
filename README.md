# tor-server

simple tor server image with controller password ( tor#1234 )

## Pull Image

```bash
sudo docker pull ghcr.io/romysaputrasihananda/tor-server:latest

```

## Build

```bash
docker build -t romy/tor-server .
```

## Running

```bash
sudo docker run \
    --rm \
    --detach \
    --name tor \
    --publish 9999:9050 \
    --publish 10000:9051 \
    romy/tor-server
```

## Example Usage

```bash
curl --socks5 0.0.0.0:9999 https://check.torproject.org/api/ip
```
