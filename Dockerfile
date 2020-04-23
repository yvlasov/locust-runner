FROM locustio/locust
RUN pip install virtualenv
ENV PATH="${PATH}:/home/locust/.local/bin/"
