FROM node:20 AS build

# Installer dépendances système pour Electron
RUN apt-get update && apt-get install -y \
    libnss3 libatk1.0-0 libx11-xcb1 libxcomposite1 libxdamage1 \
    libxrandr2 libgtk-3-0 libasound2 libgbm1 libpango1.0-0 libcups2 \
    libxss1 libxshmfence1 libxcb1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copier tout le projet **avant** npm install
COPY . .

# Installer npm et dépendances
RUN npm install -g npm@11
RUN npm install --legacy-peer-deps

# Builder ton app
RUN npm run build

# Nginx pour servir l'app
FROM nginx:latest
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
