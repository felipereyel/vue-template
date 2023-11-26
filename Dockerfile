# Build the Vue app
FROM node:18-alpine as vueapp
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY ./src ./src
COPY ./public ./public
COPY index.html tsconfig.json tsconfig.node.json vite.config.ts ./
RUN npm run build

# Build the final image
FROM nginx:latest as release
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=vueapp /app/dist /usr/share/nginx/html
