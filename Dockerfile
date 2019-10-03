FROM existdb/existdb
EXPOSE 8080 8443
RUN mkdir /usr/local/data
COPY *.xar /exist/autodeploy
COPY data/*.xml /usr/local/data
COPY config/collection.xconf /usr/local/config
COPY config/transform2HTMLDiv.xsl /usr/local/config

