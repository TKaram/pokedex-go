FROM node:6-alpine
ADD . /pokedex-handson
WORKDIR ${WORKDIR}
RUN npm install
CMD ["npm", "start"]