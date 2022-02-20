FROM python:3.6-slim

RUN apt-get update && apt-get install -y python3 \
    libpq-dev \
    python3-pip  \
    python3-setuptools \
    bash-completion \
    curl \
    git \
    vim \
    htop \
    unixodbc-dev

RUN rm -rf /var/lib/apt/lists/*

COPY . /alexandria-notebooks
WORKDIR /alexandria-notebooks

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Run the command on container startup
CMD /start.sh
