FROM node:17

WORKDIR /usr/src/projects/studies-nestjs

COPY . .
COPY ./.env.production ./.env

RUN npm install --quiet --no-optional --no-fund --loglevel=error

RUN npm run build

CMD ["npm", "run", "start:prod"]