FROM existdb/existdb:4.7.0
EXPOSE 8080 8443

COPY exist-documentation-4.2.0.xar /exist/autodeploy/
COPY data/*.xml /exist/webapp/WEB-INF/data/

COPY config/collection.xconf /usr/local/config
COPY config/transform2HTMLDiv.xsl /usr/local/config

COPY config/collection.xconf /exist/webapp/WEB-INF/data/
COPY config/transform2HTMLDiv.xsl /exist/webapp/WEB-INF/data/
