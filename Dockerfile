FROM existdb/existdb
EXPOSE 8080 8443
# RUN ls /usr/local
# RUN mkdir -p /usr/local/data
# RUN mkdir -p /usr/local/config
COPY *.xar /exist/autodeploy/
COPY data/*.xml /usr/local/data/
COPY config/collection.xconf /usr/local/config
COPY config/transform2HTMLDiv.xsl /usr/local/config
