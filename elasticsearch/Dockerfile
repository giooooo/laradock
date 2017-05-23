FROM elasticsearch:latest

MAINTAINER Bo-Yi Wu <appleboy.tw@gmail.com>

ADD ./elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch

EXPOSE 9200 9300
