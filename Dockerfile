FROM centos:centos7
RUN yum install httpd -y

#para agregar un directorio de trabajo
WORKDIR /var/www/html

#COPY y ADD sirven para añadir archivos fuera de docker 
#(ADD se usa mas para añadir recursos de internet)
COPY startboostrap .

#Para añadir variables de entorno usamos lo siguiente
ENV contenido=prueba

RUN echo "${contenido}" > prueba.html

CMD apachectl -DFOREGROUND