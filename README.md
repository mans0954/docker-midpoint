Unofficial Docker compose file for orchestrating Evolveum MidPoint for evaluation.

```
docker-compose up
```

* MidPoint: Url: http://midpoint.docker:8080/midpoint
* username: administrator
* password: 5ecr3t
* Home: /var/opt/midpoint/

# CSV file setup

* Go to `Resources`/`List Resources`
* Click the `Import` icon
* Select `resource-csv-username.xml`
* Select `Test CSV:username` in `Resources List`
* Click `Test Connection`
* View `Accounts` / `Resource`

# Connector Server Setup

* Go to `Configuration` / `Import Object`
* Click Browse
* Select `remote-server.xml`
* The connector server now appears under `Resources / Connector Hosts`

# Extracting objects from a Raw Object Export

`extract.xsl` is an XSLT file for extracting XML representations of objects of particular types into individual files.

Create an `ExportedData_ObjectType.xml` file by going to `Configuration` / `Repository Objects`, select the cog and select `Export all Objects`

Run

```
saxonb-xslt -ext:on -xsl:extract.xsl data/ExportedData_ObjectType.xml
```

