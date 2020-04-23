FROM locustio/locust
USER root
RUN apk add --update make cmake gcc g++ gfortran
RUN apk add --update python py-pip python-dev
RUN pip install cython
RUN pip install virtualenv bzt
USER locust
ENV PATH="${PATH}:/home/locust/.local/bin/"
