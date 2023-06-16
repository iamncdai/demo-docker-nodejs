FROM ubuntu

ARG PORT=3000

RUN apt-get update \
    && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn

WORKDIR /app

COPY ./app/package*.json ./app/yarn.lock /app/

RUN yarn install

COPY ./app /app

EXPOSE $PORT

CMD ["yarn", "dev"]
