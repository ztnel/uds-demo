FROM ubuntu

# Grab dependencies and generate locale
RUN apt update && apt upgrade -y && apt install -y python3 python3-pip sudo locales && locale-gen en_US.UTF-8
RUN apt install -y build-essential

WORKDIR /app

ENTRYPOINT [ "/bin/bash" ]