# Custom tz data based on tzdata-2018f

https://data.iana.org/time-zones/releases/

(asia from 2018e: https://data.iana.org/time-zones/releases/tzdata2018e.tar.gz)

(everything else from 2018f: https://data.iana.org/time-zones/releases/tzdata2018f.tar.gz)

## Example Dockerfile to update tzdata

```Dockerfile
FROM jboss/wildfly:13.0.0.Final

COPY . /app/tmp/

USER root

RUN yum -y update \
 && yum -y update tzdata \
 && yum -y clean all \
 && tar -xvzf /app/tmp/ziupdater1.0.1.2-jse8+7-any_jvm.tar.gz -C /app/tmp/ \
 && java -jar /app/tmp/ziupdater-1.0.1.2.jar -V \
 && java -jar /app/tmp/ziupdater-1.0.1.2.jar -l file:///app/tmp/tzdata2018f-01.tar.gz \
 && java -jar /app/tmp/ziupdater-1.0.1.2.jar -V \
 && rm -rf /app/tmp

USER jboss
```

(it shows the tzdata version before and after updating it)
