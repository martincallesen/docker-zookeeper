FROM confluentinc/cp-zookeeper:5.3.1

# Jolokia envs
ENV VERSION 1.6.2
ENV JAR jolokia-jvm-$VERSION-agent.jar
ENV MAVEN_REPOSITORY https://repo1.maven.org/maven2

# Add Jolokia for exposing JMX metrics
RUN mkdir -p /opt/jolokia/
RUN curl -L $MAVEN_REPOSITORY/org/jolokia/jolokia-jvm/$VERSION/$JAR -o /opt/jolokia/$JAR
