# Stage 0, based on Node.js, to build and compile Angular
FROM node:latest as node
WORKDIR /app
COPY ./ /app/
RUN npm install
# Expose the port the app runs in
EXPOSE 4200

# Serve the app
CMD ["npm", "start"]

# docker build -t auth0-angular-demo:v1.0 .
# docker run -d --name auth0-angular-demo:v1.0 -p 80:4200 auth0-angular-demo:v1.0