FROM node:16
WORKDIR /app-server
COPY . /app-server
RUN npm install -g @angular/cli && npm install
EXPOSE 80
CMD ng serve --host 0.0.0.0 --port 80
