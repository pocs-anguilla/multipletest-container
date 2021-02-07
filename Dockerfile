FROM openjdk:8-slim-buster

RUN apt-get update \
    && apt-get install -y wget ca-certificates unzip

RUN mkdir -p /opt/multipletest \
    && cd /tmp \
    && wget https://sci2s.ugr.es/sites/default/files/files/TematicWebSites/sicidm/multipleTest.zip \
    && unzip -x multipleTest.zip -d /opt/multipletest \
    && cd /opt/multipletest \
    && mkdir META-INF \
    && echo "Main-Class: Friedman" >> META-INF/MANIFEST.MF \
    && jar cmvf META-INF/MANIFEST.MF multipletest.jar . \
    && mkdir -p /workspace \
    && rm -rf /tmp/*

WORKDIR "/workspace"
ENTRYPOINT ["java", "-jar", "/opt/multipletest/multipletest.jar"]
CMD ["/opt/multipletest/data.csv"]
