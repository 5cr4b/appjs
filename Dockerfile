FROM node:alpine
WORKDIR .
COPY package*.json ./
RUN npm ci --only-production
COPY . . 
ENV MY_POD_NAMESPACE test_pod
ENV MY_POD_NAME test
ENV MY_POD_IP undifined
EXPOSE 8080
CMD ["node","app.js"]



