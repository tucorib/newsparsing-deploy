FROM debian:jessie

# Update sources
RUN apt-get update

# Install Python and pip
RUN apt-get install -qy \
    -o APT::Install-Recommend=false -o APT::Install-Suggests=false \
    python3 python3-dev python3-pip

# Upgrade pip
RUN pip3 install --upgrade pip

# Upgrade setuptools
RUN pip3 install --upgrade setuptools

# Install Redis
RUN apt-get install -qy \
    -o APT::Install-Recommend=false -o APT::Install-Suggests=false \
    redis-server

# Install Mongodb
RUN apt-get install -qy \
    -o APT::Install-Recommend=false -o APT::Install-Suggests=false \
    mongodb mongodb-dev
