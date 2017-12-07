FROM docker.elastic.co/elasticsearch/elasticsearch:6.0.1
MAINTAINER Patrick Laurin <plaurin@inocybe.ca>
RUN wget https://packages.elastic.co/curator/5/centos/7/Packages/elasticsearch-curator-5.4.1-1.x86_64.rpm
RUN rpm -ivh elasticsearch-curator-5.4.1-1.x86_64.rpm
