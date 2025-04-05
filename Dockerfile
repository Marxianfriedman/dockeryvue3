 # Imagen de Node.js para desarrollo
FROM node:18-alpine 
 # Carpeta de trabajo dentro del contenedor
WORKDIR /app 

# Copia package.json y package-lock.json primero (para optimizar caché)
COPY package*.json ./
RUN npm install  # Instala dependencias

# Copia el resto del código
COPY . .

# Expone el puerto donde corre Vite
EXPOSE 5173

# Comando por defecto: ejecutar Vite
CMD ["npm", "run", "dev", "--", "--host"]
