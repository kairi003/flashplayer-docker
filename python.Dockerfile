FROM kairi003/flashplayer:base

RUN apt update && apt install -y \
    python3 \
    python3-dev \
    python3-pip \
    && apt clean && rm -rf /var/lib/apt/lists/*
