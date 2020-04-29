FROM node:12.13
EXPOSE 4000

# @todo: no docker layer caching
WORKDIR /app
COPY . /app

RUN npm install
ENV NODE_ENV=production
CMD npm start
