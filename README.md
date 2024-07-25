# tor-server-image

simple tor server images

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
