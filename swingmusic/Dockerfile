ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN apt-get update \
    && apt-get install -y \
        gcc \
        libev-dev \
        ffmpeg \
        libavcodec-extra \
        python3-pip \
        python3-dev \
        build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install swingmusic via pip
RUN pip3 install --no-cache-dir swingmusic

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
