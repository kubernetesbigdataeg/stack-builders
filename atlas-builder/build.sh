wget https://archive.apache.org/dist/atlas/2.3.0/apache-atlas-2.3.0-sources.tar.gz
mkdir atlas; tar xvzf apache-atlas-2.3.0-sources.tar.gz -C atlas
cd atlas
export MAVEN_OPTS="-Xms2g -Xmx2g"
mvn clean -DskipTests package -Pdist
cp distro/target/apache-atlas-2.3.0-server.tar.gz .
