# Usa la imagen base oficial de PocketMine-MP
FROM ghcr.io/pmmp/pocketmine-mp:5.27.1

# Configura el directorio de trabajo
WORKDIR /pocketmine

# Crea los directorios necesarios
RUN mkdir -p /data /plugins

# Establece permisos para los directorios
RUN chown -R 1000:1000 /data /plugins

# Expone el puerto UDP 19132 para Minecraft Bedrock
EXPOSE 19132/udp

# Copia archivos personalizados (si los tienes)
COPY ./data /data
COPY ./plugins /plugins

# Comando para iniciar el servidor
CMD ["start-pocketmine"]