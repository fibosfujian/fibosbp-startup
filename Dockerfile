FROM node:slim
LABEL maintainer="fibosfujian@hotmail.com"
COPY . /fibosbp
WORKDIR /fibosbp
RUN apt-get update && apt-get install openssl && apt-get install sudo && \
  npm install && \
  curl -s https://fibos.io/download/installer.sh | sh
CMD ["fibos", "./index.js"]