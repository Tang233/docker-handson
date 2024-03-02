FROM node:18-alpine

WORKDIR /app

COPY ./build .

# RUN echo $(ls)

# RUN echo $(pwd)

EXPOSE 80

RUN npm install -g serve
# RUN npm install -g live-server

ENTRYPOINT [ "npx","serve", "-l","80"]    
# ENTRYPOINT [ "npx live-server"]    


