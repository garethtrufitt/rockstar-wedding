FROM node:16-alpine
WORKDIR /app

# Copy and download dependencies
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile

# Copy the source files into the image
COPY . .
EXPOSE 7575

CMD yarn start
