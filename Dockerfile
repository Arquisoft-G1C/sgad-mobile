# Imagen base con Flutter
FROM ghcr.io/cirruslabs/flutter:stable

# Directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY pubspec.* ./
RUN flutter pub get

# Copiar todo el código fuente
COPY . .

# Habilitar Flutter Web
RUN flutter config --enable-web

# Exponer puerto
EXPOSE 8090

# Comando de inicio en modo desarrollo
CMD ["flutter", "run", "-d", "web-server", "--web-hostname", "0.0.0.0", "--web-port", "8090"]