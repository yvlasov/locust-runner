FROM locustio/locust
RUN pip install virtualenv
ENV PATH="${PATH}:${HOME}/.local/bin/"
