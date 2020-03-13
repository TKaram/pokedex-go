FROM node:6-alpine
ADD . /pokedex-handson
RUN npm install
CMD ["npm", "start"]