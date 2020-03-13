FROM node:6-alpine
ADD . /pokedex-handson
CMD ["npm", "install"]
