# docker-grafana

Ready-to-run Docker image with Prometheus.

## Quickstart

```bash
$ docker run --name prometheus -e alxshelepenok/prometheus:latest
```

## Building

```bash
$ ./build.sh latest
```

## Usage

```yaml
version: "3.9"

services:
  prometheus:
    image: alxshelepenok/prometheus:latest
    volumes:
      - ./prometheus:/etc/prometheus
      - prometheus-data:/prometheus
    command:
      - --config.file=/etc/prometheus/prometheus.yml
      - --storage.tsdb.path=/prometheus
      - --storage.tsdb.retention.time=90d
      - --storage.tsdb.retention.size=10GB
      - --web.console.libraries=/usr/share/prometheus/console_libraries
      - --web.console.templates=/usr/share/prometheus/consoles

volumes:
  prometheus-data:
    external: false
```
