# ELK on Docker
Contains all that you need to get a 5.4 ELK Stack running in Docker to pull, index, and visualize data. It's recommended to have the latest version of docker installed to use this repo and set your memory to at least 6gb and cpus to 5 in your Docker preferences.

### Tips
* Make sure to create ```mkdir ./elastic/data``` directory set ```chmod 777 ./elastic/data``` before running the elastic container.
* Modifying the logstash .conf files requires a rebuild of the container. It would probably be better to have it as a mounted volume.
* Create a shared network using: ```docker network create elk-net```

### Security
The elasticSearch comes with X-Pack installed and hence security is enabled by default.
The default credential for elastic and kibana is:
```sh
 username: elastic
 password: changeme
```

To enable anonymous access to the elasticsearch cluster uncomment these lines in the ```elastic/elasticsearch.yml``` file.
```sh
#xpack.security.authc.anonymous.username: anonymous_user
#xpack.security.authc.anonymous.roles: superuser
```

## /elastic
Run docker-build.sh and then docker-run.sh to run the container.
The elastic cluster can be accessed at ```http://0.0.0.0:9200/```

## /kibana
Run docker-build.sh and then docker-run.sh to run the container. This container uses the shared network and links to the elastic container.
The kibana UI can be accessed at ```http://localhost:5601/```

## /logstash
This container uses the shared network and links to to the elastic container.
