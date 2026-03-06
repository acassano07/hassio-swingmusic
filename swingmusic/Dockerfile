ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies using apk (Alpine)
RUN apk add --no-cache \
        python3 \
        py3-pip \
        python3-dev \
        build-base \
        libev-dev \
        ffmpeg

# Install swingmusic
# Using --break-system-packages as this is a dedicated container
RUN pip3 install --no-cache-dir --break-system-packages swingmusic

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
