ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies using apk (Alpine)
RUN apk add --no-cache \
        python3 \
        py3-pip \
        python3-dev \
        build-base \
        libev \
        libev-dev \
        ffmpeg \
        g++ \
        make \
        ca-certificates \
        musl-dev \
    && update-ca-certificates

# Install swingmusic
RUN pip3 install --no-cache-dir --break-system-packages swingmusic

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
