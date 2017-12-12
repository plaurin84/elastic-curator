FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.5
MAINTAINER Patrick Laurin <plaurin@inocybe.ca>
RUN wget https://packages.elastic.co/curator/5/centos/7/Packages/elasticsearch-curator-5.4.1-1.x86_64.rpm
USER root
RUN rpm -ivh elasticsearch-curator-5.4.1-1.x86_64.rpm
USER elasticsearch
RUN rm elasticsearch-curator-5.4.1-1.x86_64.rpm
# Below locale envs required for curator cli to work 
ENV LC_ALL=en_US.utf-8
ENV LANG=en_US.utf-8
