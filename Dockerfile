FROM existdb/existdb
EXPOSE 8080 8443
RUN mkdir /usr/local/data
COPY *.xar /exist/autodeploy
COPY data/*.xml /usr/local/data
