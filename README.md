Unofficial Docker compose file for orchestrating Evolveum MidPoint for evaluation.

```
docker-compose up
```

* MidPoint: Url: http://midpoint.docker:8080/midpoint
* username: administrator
* password: 5ecr3t
* Home: /var/opt/midpoint/

# Connector Server Setup

* Go to `Configuration` / `Import Object`
* Click Browse
* Select `remote-server.xml`
* The connector server now appears under `Resources / Connector Hosts`
