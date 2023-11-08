# Usa una imagen base de Node.js
FROM node:18.18.2-alpine

RUN npm install -g @angular/cli@17

# Establece el directorio de trabajo en /app
WORKDIR /application/angular-demo

# Expone el puerto 4200 (el puerto predeterminado para aplicaciones de Angular)
EXPOSE 4200

# Inicia la aplicación Angular cuando se ejecute el contenedor
CMD ["ng", "serve","--host", "0.0.0.0"]