FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install -g npm@11
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

FROM nginx:latest
# Copier ton fichier nginx.conf personnalisé
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copier les fichiers buildés
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
