# mi-app - Vue 3 + Vite con docker

Este proyecto combina Vue 3 en Vite con configuracion Docker para el desarrollo y despliegue.

## Características
- Vue 3 + Vite
- Configuracione Docker lista para produccion
- Configurado en WSL/Kali linux
- ESLint integrado

## Configuración IED
Recomendamos usar [VSCode](https://code.visualstudio.com/) con:
- [Extensión Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (soporte oficial para Vue 3)
- ⚠️ Deshabilita la extensión Vetur (para Vue 2) para evitar conflictos

## Personalización avanzada 

El proyecto usa [Vite](https://vitejs.dev/). Para modificar:
- Configuración del servidor de desarrollo
- Rutas de compilación
- Variables de entorno

Consulta la [documentación oficial de Vite](https://vite.dev/config/).

## Comandos esenciales

## Instalación y configuración
```sh```
npm install       # Instalar dependencias
npm run dev      # Desarrollo con hot-reload

## COMPILACION
```sh```
npm run build    # Build para producción (optimizado)
npm run preview  # Previsualizar build de producción localmente

## Mantenimiento
```sh```
npm run list  # Análisis de código con ESLint
npm run format   # Formateo automático (opcional)

## Version Dockerizada
```sh```
docker-compose up --build    # Construir y levantar contenedor
docker-compose down         # Detener contenedor

