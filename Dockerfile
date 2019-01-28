FROM frolvlad/alpine-glibc

RUN apk update && apk add libaio

ADD /oracle/instantclient_12_1.tar.gz /usr/lib

# to run the application, it is necessary to extract all  libraries.
RUN ln -s /usr/lib/libclntsh.so.12.1 /usr/lib/libclntsh.so && \
    ln -s /usr/lib/libocci.so.12.1 /usr/lib/libocci.so

ENV ORACLE_BASE /usr/lib
ENV LD_LIBRARY_PATH /usr/lib
ENV TNS_ADMIN /usr/lib
ENV ORACLE_HOME /usr/lib   
