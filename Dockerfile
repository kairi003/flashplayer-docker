FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y \
    xvfb \
    x11-utils \
    xdotool \
    imagemagick \
    libxcursor1 \
    libnss3 \
    libgtk2.0-0 \
    gstreamer1.0-gtk3 \
    libgstreamer1.0-dev \
    && apt clean && rm -rf /var/lib/apt/lists/*

ADD flash_player_sa_linux.x86_64.tar.gz \
    /usr/local/flash_player_sa_linux.x86_64
ADD flash_player_sa_linux_debug.x86_64.tar.gz \
    /usr/local/flash_player_sa_linux_debug.x86_64

RUN ln -s /usr/local/flash_player_sa_linux.x86_64/flashplayer /usr/local/bin/ && \
    ln -s /usr/local/flash_player_sa_linux_debug.x86_64/flashplayerdebugger /usr/local/bin/
