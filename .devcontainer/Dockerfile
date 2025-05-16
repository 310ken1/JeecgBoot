FROM ubuntu:25.04

# 環境変数
ENV NVS_HOME=/root/.nvs \
    PATH="/root/.nvs:${PATH}"

# パッケージインストール
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt update && apt install --no-install-recommends -y \
    sudo \
    curl \
    git \
    openjdk-21-jdk-headless \
    gradle \
    maven \
    graphviz \
    fonts-ipafont

# PlantUMLインストール
ARG plantuml="https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar"
RUN curl -LsSf ${plantuml} -o /usr/local/bin/plantuml.jar
