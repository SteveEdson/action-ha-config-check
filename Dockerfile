FROM ludeeus/container:python

COPY runaction.sh /runaction.sh
RUN \
    apk add --no-cache \
        jq \
        bash \
        libxml2 \
        libxslt \
        bluez-dev \
        zlib-dev \
        libjpeg-turbo-dev \
    \
    && python3 -m pip install --disable-pip-version-check \
        wheel \
        setuptools

ENTRYPOINT ["bash", "/runaction.sh"]
