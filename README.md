# Virtualized TR-069 Test Environment

Build and create a virtualized TR-069 environment consisting of the following components:

 - GenieACS (+GUI, DB, ...)
 - A vanilla freecwmp (openwrt) TR-069 client
 - A TR-069 honeyclient
 - Two sensors intercepting communication between clients and ACS
 - Log collector that receives data from sensors.

## Requirements

  * [docker](https://docs.docker.com/engine/installation/)
  * [docker-compose](https://docs.docker.com/compose/overview/)

## Quick Start

Bring everything up with a single docker-compose:

```
docker-compose up -d
```

Once started, you can visit the following URLs:

- http://localhost:3000/ - the GenieACS web interface
- http://localhost:8082/ - the freecwmp sensor interface
- http://localhost:8081/ - the honeyclient sensor interface.

The honeyclient will not show any traffic as it needs to be operated manually in this setup. It can be started like this:

```
docker-compose run honeyclient
```