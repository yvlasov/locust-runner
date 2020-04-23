FROM locustio/locust
RUN pip install virtualenv numpy bzt
ENV PATH="${PATH}:/home/locust/.local/bin/"
