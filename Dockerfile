FROM existdb/existdb:4.7.0
EXPOSE 8080 8443

COPY exist-documentation-4.2.0.xar /exist/autodeploy/
COPY data/*.xml /exist/webapp/WEB-INF/data/

COPY config/collection.xconf /usr/local/config
COPY config/transform2HTMLDiv.xsl /usr/local/config

COPY config/collection.xconf /exist/webapp/WEB-INF/data/
COPY config/transform2HTMLDiv.xsl /exist/webapp/WEB-INF/data/

## TODO
# curl -v http://admin:@localhost:9080/exist/rest/db/?_query=sm%3Apasswd\(%22admin%22%2C%20%22g5TzsLKfLMh6GDBx%22\)
